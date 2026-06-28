<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Arabic articles data from original site (ID => [title, date, description])
$arabicArticles = [
    47 => [
        'title' => 'وان أوف وان تنضم للميثاق العالمي للأمم المتحدة في مصر لترسيخ استدامة الأعمال وتمكين المرأة قياديًا',
        'date' => '2026-06-10',
        'description' => 'أعلنت شركة وان أوف وان للتطوير العقاري عن انضمامها رسميًا كعضو للميثاق العالمي للأمم المتحدة بمصر، في خطوة استراتيجية تؤكد التزامها بدفع ممارسات الأعمال المستدامة وتمكين المرأة في المناصب القيادية.',
    ],
    48 => [
        'title' => 'وان أوف وان للتنمية العمرانية تطلق مشروعين في زايد والتجمع السادس بمساحة إجمالية 60 فدان',
        'date' => '2025-10-22',
        'description' => 'أعلنت شركة "وان أوف وان" عن إطلاق مشروعين جديدين بمساحة إجمالية 60 فدانًا، بمبيعات مستهدفة 45 مليار جنيه.',
    ],
    49 => [
        'title' => 'مصطفى صلاح: شركة "وان أوف وان" تقوم على 3 ركائز أساسية',
        'date' => '2025-10-22',
        'description' => 'أكد مصطفى صلاح، الرئيس التنفيذي لشركة "وان أوف وان"، أن الشركة تقوم على ثلاث ركائز أساسية: التصميم المدروس، الاستدامة، والقيمة المستدامة.',
    ],
    50 => [
        'title' => '"وان أوف وان" تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين يجسدان رؤيتها',
        'date' => '2025-10-22',
        'description' => 'أعلنت شركة "وان أوف وان" عن إطلاق مشروعين جديدين يجسدان رؤيتها في تقديم مجتمعات متكاملة ومبتكرة، خلال مؤتمر صحفي عُقد في 22 أكتوبر.',
    ],
    51 => [
        'title' => '«وان أوف وان» تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين',
        'date' => '2025-10-22',
        'description' => 'أعلنت شركة "وان أوف وان" عن تعزيز وجودها في السوق المصري من خلال إطلاق مشروعين استراتيجيين يجسدان رؤيتها في تصميم مجتمعات متكاملة.',
    ],
    52 => [
        'title' => 'إطلاق مشروعي Bridges وGrounds بالشيخ زايد والتجمع السادس علي مساحة 60 فدان',
        'date' => '2025-10-22',
        'description' => 'أعلنت شركة "وان أوف وان" للتنمية العمرانية عن إطلاق مشروعين جديدين بإجمالي مساحة 60 فدانًا، يعكسان رؤيتها في تقديم مجتمعات متكاملة.',
    ],
    53 => [
        'title' => '"وان أوف وان" تطلق مشروعين في الشيخ زايد والتجمع السادس',
        'date' => '2025-10-22',
        'description' => 'أطلقت شركة وان أوف وان للتنمية العمرانية مشروعين جديدين هما "Bridges" في الشيخ زايد و"Grounds" في التجمع السادس بالقاهرة الجديدة.',
    ],
    54 => [
        'title' => '"وان أوف وان" العقارية تطلق مشروعين جديدين في السوق المصري',
        'date' => '2025-10-22',
        'description' => 'أعلنت شركة "وان أوف وان" للتنمية العمرانية عن إطلاق مشروعين جديدين في السوق المصري، هما "Bridges" في الشيخ زايد و"Grounds" في التجمع السادس.',
    ],
    55 => [
        'title' => '"وان أوف وان" تطلق مشروعين استراتيجيين يجسدان رؤيتها',
        'date' => '2025-10-22',
        'description' => 'أعلنت شركة "وان أوف وان" للتنمية العمرانية عن إطلاق مشروعين استراتيجيين جديدين يجسدان رؤيتها في تقديم مجتمعات متكاملة.',
    ],
    56 => [
        'title' => '"وان أوف وان" للتنمية العمرانية تبدأ أعمالها رسميًا في مصر',
        'date' => '2025-09-09',
        'description' => 'أعلنت شركة وان أوف وان للتنمية العمرانية عن إطلاق أعمالها رسميًا في السوق المصري، مدعومة بمحفظة استثمارات تتخطى 150 مليار جنيه.',
    ],
    57 => [
        'title' => '"وان أوف وان" تبدأ أعمالها في السوق المصري بمحفظة 150 مليار جنيه',
        'date' => '2025-09-08',
        'description' => 'برؤية تنسج العلاقة بين الإنسان والمكان في مجتمع متكامل. الشركة تدخل السوق بإجمالي استثمارات حالية تتجاوز 150 مليار جنيه.',
    ],
    58 => [
        'title' => 'برؤية تنسج العلاقة بين الإنسان والمكان - وان أوف وان',
        'date' => '2025-09-09',
        'description' => 'الشركة تدخل السوق بإجمالي استثمارات حالية تتجاوز 150 مليار جنيه، واستراتيجية تركز على القيمة طويلة الأمد وجودة التخطيط.',
    ],
    59 => [
        'title' => '150 مليار جنيه.. "وان أوف وان" تدخل سوق التطوير العقاري',
        'date' => '2025-09-08',
        'description' => 'أعلنت شركة "وان أوف وان" للتنمية العمرانية عن انطلاق أعمالها رسميًا باستثمارات تتجاوز 150 مليار جنيه، مع رؤية تهدف إلى إعادة تعريف مفهوم التطوير العمراني.',
    ],
    60 => [
        'title' => 'وان أوف وان تطلق أعمالها في السوق المصري بأربعة أراضٍ استراتيجية',
        'date' => '2025-09-08',
        'description' => 'تطلق شركة وان أوف وان للتنمية العمرانية رسميًا في السوق المصري كمطور عقاري باستثمارات تتجاوز 150 مليار جنيه.',
    ],
    61 => [
        'title' => 'وان أوف وان تبدأ أعمالها رسميًا في السوق المصري',
        'date' => '2025-09-08',
        'description' => 'أعلنت شركة وان أوف وان للتنمية العمرانية عن إطلاق أعمالها رسميًا في السوق المصري، مدعومة بمحفظة استثمارات تتخطى 150 مليار جنيه.',
    ],
    62 => [
        'title' => 'وان أوف وان للتنمية تخطط لاستثمار أكثر من 150 مليار جنيه',
        'date' => '2025-09-08',
        'description' => 'أعلنت شركة وان أوف وان للتنمية العمرانية عن إطلاق أعمالها رسميًا في السوق المصري، مدعومة بمحفظة استثمارات تتخطى 150 مليار جنيه.',
    ],
    63 => [
        'title' => 'وان أوف وان للتنمية العمرانية تبدأ أعمالها رسميًا في مصر',
        'date' => '2025-09-08',
        'description' => 'أعلنت شركة وان أوف وان للتنمية العمرانية عن إطلاق أعمالها رسميًا في السوق المصري، مدعومة بمحفظة استثمارات تتخطى 150 مليار جنيه.',
    ],
];

// English articles data from original site (ID => [title, date, description])
$englishArticles = [
    38 => [
        'title' => '"One of One" Announces Details of "Grounds" Project During the Opening of the Company\'s Headquarters',
        'date' => '2026-05-20',
        'description' => 'In a new step reflecting the continued implementation of its expansion strategy in the Egyptian market, One of One Developments announced the opening of its headquarters, aligning with the company\'s p...',
    ],
    39 => [
        'title' => 'One of One Collaborates with iRead to enhance human awareness and build a cultured society',
        'date' => '2026-02-08',
        'description' => 'In a move that underscores its leadership as a company not solely focused on urban development but also on human development, One of One has announced...',
    ],
    40 => [
        'title' => 'One of One Celebrates Christmas & New Year at Zayed\'s Town Hall',
        'date' => '2025-12-18',
        'description' => 'At One of One, we believe culture is built beyond the work...',
    ],
    41 => [
        'title' => 'One of One Wins Creative Brand Communication Award at Invest-Gate ACE Awards 2025',
        'date' => '2025-12-10',
        'description' => 'In a new affirmation of its growing influence in Egypt\'s real estate market, One of One has received the Creative Brand Communication Award during the...',
    ],
    42 => [
        'title' => 'Bridges Selection Day Achieves Strong On-Ground Sales',
        'date' => '2025-11-22',
        'description' => 'On 22 November 2025, we proudly hosted the Selection Day event for our Bridges Commercial Project at One of One\'s Townhall, marking a major milestone...',
    ],
    43 => [
        'title' => 'One of One CEO Participates in IREIS 2025 Summit: Building Beyond Skylines',
        'date' => '2025-10-31',
        'description' => 'We were honored to have our CEO, Mostafa Salah, participate in the IREIS – International Real Estate & Investment Show 2025 Summit in Ras Al Khaimah...',
    ],
    44 => [
        'title' => '"One Of One" Strengthens Its Presence in the Egyptian Market with the Launch of Two Strategic Projects',
        'date' => '2025-10-22',
        'description' => 'One of One Urban Development has announced the launch of two new strategic projects in Egypt: "Bridges" in Sheikh Zayed and "Grounds" in New Cairo. Th...',
    ],
    45 => [
        'title' => 'One of One Officially Launches in The Egyptian Market with Four Strategic Land Plots',
        'date' => '2025-09-08',
        'description' => 'One of One Urban Development announces its official launch in the Egyptian market, backed by an investment portfolio exceeding EGP 150 billion, with a...',
    ],
    46 => [
        'title' => 'One of One Officially Launches in Egyptian Market - Zawya Press Release',
        'date' => '2025-09-08',
        'description' => 'One of One Urban Development announces its official launch in the Egyptian market with a portfolio of four strategic land plots across east and west C...',
    ],
];

echo "=== Updating Arabic Articles ===" . PHP_EOL;
foreach ($arabicArticles as $id => $data) {
    $post = \Botble\Blog\Models\Post::find($id);
    if ($post) {
        $post->description = $data['description'];
        $post->created_at = $data['date'] . ' 00:00:00';
        $post->updated_at = $data['date'] . ' 00:00:00';
        $post->save();
        echo "Updated post $id: " . $data['title'] . PHP_EOL;
    }
}

echo PHP_EOL . "=== Updating English Articles ===" . PHP_EOL;
foreach ($englishArticles as $id => $data) {
    $post = \Botble\Blog\Models\Post::find($id);
    if ($post) {
        $post->description = $data['description'];
        $post->created_at = $data['date'] . ' 00:00:00';
        $post->updated_at = $data['date'] . ' 00:00:00';
        $post->save();
        echo "Updated post $id: " . $data['title'] . PHP_EOL;
    }
}

echo PHP_EOL . "=== Done! ===" . PHP_EOL;
