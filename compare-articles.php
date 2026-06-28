<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Arabic articles from original site (IDs from the HTML)
$arabicArticlesFromSite = [
    27 => 'وان أوف وان تنضم للميثاق العالمي للأمم المتحدة في مصر',
    19 => 'وان أوف وان للتنمية العمرانية تطلق مشروعين في زايد والتجمع السادس بمساحة إجمالية 60 فدان',
    18 => 'مصطفى صلاح: شركة "وان أوف وان" تقوم على 3 ركائز أساسية',
    17 => '"وان أوف وان" تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين يجسدان رؤيتها',
    16 => '«وان أوف وان» تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين',
    15 => 'إطلاق مشروعي Bridges وGrounds بالشيخ زايد والتجمع السادس علي مساحة 60 فدان',
    11 => '"وان أوف وان" تطلق مشروعين في الشيخ زايد والتجمع السادس',
    12 => '"وان أوف وان" العقارية تطلق مشروعين جديدين في السوق المصري',
    13 => '"وان أوف وان" تطلق مشروعين استراتيجيين يجسدان رؤيتها',
    1 => '"وان أوف وان" للتنمية العمرانية تبدأ أعمالها رسميًا في مصر',
    2 => '"وان أوف وان" تبدأ أعمالها في السوق المصري بمحفظة 150 مليار جنيه',
    3 => 'برؤية تنسج العلاقة بين الإنسان والمكان - وان أوف وان',
    4 => '150 مليار جنيه.. "وان أوف وان" تدخل سوق التطوير العقاري',
    6 => 'وان أوف وان تطلق أعمالها في السوق المصري بأربعة أراضٍ استراتيجية',
    8 => 'وان أوف وان تبدأ أعمالها رسميًا في السوق المصري',
    9 => 'وان أوف وان للتنمية تخطط لاستثمار أكثر من 150 مليار جنيه',
    10 => 'وان أوف وان للتنمية العمرانية تبدأ أعمالها رسميًا في مصر',
];

// English articles from original site (IDs from the HTML)
$englishArticlesFromSite = [
    26 => '"One of One" Announces Details of "Grounds" Project During the Opening of the Company\'s Headquarters',
    25 => 'One of One Collaborates with iRead to enhance human awareness and build a cultured society',
    24 => 'One of One Celebrates Christmas & New Year at Zayed\'s Town Hall',
    23 => 'One of One Wins Creative Brand Communication Award at Invest-Gate ACE Awards 2025',
    22 => 'Bridges Selection Day Achieves Strong On-Ground Sales',
    21 => 'One of One CEO Participates in IREIS 2025 Summit: Building Beyond Skylines',
    14 => '"One Of One" Strengthens Its Presence in the Egyptian Market with the Launch of Two Strategic Projects',
    5 => 'One of One Officially Launches in The Egyptian Market with Four Strategic Land Plots',
    7 => 'One of One Officially Launches in Egyptian Market - Zawya Press Release',
];

// Get existing articles from database
$arPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->get(['id', 'name'])
    ->keyBy('name')
    ->toArray();

$enPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 7))
    ->get(['id', 'name'])
    ->keyBy('name')
    ->toArray();

echo "=== Arabic Articles Comparison ===" . PHP_EOL;
echo "Site: " . count($arabicArticlesFromSite) . " articles" . PHP_EOL;
echo "DB: " . count($arPosts) . " articles" . PHP_EOL;
echo PHP_EOL;

$missingArabic = [];
foreach ($arabicArticlesFromSite as $siteId => $title) {
    $found = false;
    foreach ($arPosts as $dbPost) {
        if (strpos($dbPost['name'], $title) !== false || strpos($title, $dbPost['name']) !== false) {
            $found = true;
            break;
        }
    }
    if (!$found) {
        $missingArabic[$siteId] = $title;
    }
}

if (count($missingArabic) > 0) {
    echo "Missing Arabic Articles:" . PHP_EOL;
    foreach ($missingArabic as $siteId => $title) {
        echo "  - Site ID $siteId: $title" . PHP_EOL;
    }
} else {
    echo "All Arabic articles are present in DB ✅" . PHP_EOL;
}

echo PHP_EOL . "=== English Articles Comparison ===" . PHP_EOL;
echo "Site: " . count($englishArticlesFromSite) . " articles" . PHP_EOL;
echo "DB: " . count($enPosts) . " articles" . PHP_EOL;
echo PHP_EOL;

$missingEnglish = [];
foreach ($englishArticlesFromSite as $siteId => $title) {
    $found = false;
    foreach ($enPosts as $dbPost) {
        if (strpos($dbPost['name'], $title) !== false || strpos($title, $dbPost['name']) !== false) {
            $found = true;
            break;
        }
    }
    if (!$found) {
        $missingEnglish[$siteId] = $title;
    }
}

if (count($missingEnglish) > 0) {
    echo "Missing English Articles:" . PHP_EOL;
    foreach ($missingEnglish as $siteId => $title) {
        echo "  - Site ID $siteId: $title" . PHP_EOL;
    }
} else {
    echo "All English articles are present in DB ✅" . PHP_EOL;
}
