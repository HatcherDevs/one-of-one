<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

// Arabic Articles with correct images from official website
$arabicArticles = [
    [
        'remote_id' => 27,
        'title' => 'وان أوف وان تنضم للميثاق العالمي للأمم المتحدة في مصر لترسيخ استدامة الأعمال وتمكين المرأة قياديًا',
        'image_url' => 'https://gate.ahram.org.eg/Media/News/2026/6/9/19_2026-639166372507381311-738.jpg',
    ],
    [
        'remote_id' => 19,
        'title' => 'وان أوف وان للتنمية العمرانية تطلق مشروعين في زايد والتجمع السادس بمساحة إجمالية 60 فدان',
        'image_url' => 'https://hapijournal.com/wp-content/uploads/2025/10/13-2.jpg.webp',
    ],
    [
        'remote_id' => 18,
        'title' => 'مصطفى صلاح: شركة "وان أوف وان" تقوم على 3 ركائز أساسية',
        'image_url' => 'https://i2.wp.com/aleqaria.com.eG/images//2025/10/%D8%B4%D8%B1%D9%83%D8%A9-%D9%88%D8%A7%D9%86-%D8%A3%D9%88%D9%81-%D9%88%D8%A7%D9%86-1761128201-2.jpg?resize=920%2C550&ssl=1',
    ],
    [
        'remote_id' => 17,
        'title' => '"وان أوف وان" تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين يجسدان رؤيتها',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/10/88a4db169dfedada5f0e1c651f51f4df.webp',
    ],
    [
        'remote_id' => 16,
        'title' => '«وان أوف وان» تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين',
        'image_url' => 'https://propertypluseg.com/wp-content/uploads/2025/10/3-7.png',
    ],
    [
        'remote_id' => 15,
        'title' => 'إطلاق مشروعي Bridges وGrounds بالشيخ زايد والتجمع السادس علي مساحة 60 فدان',
        'image_url' => 'https://aqarat.see.news/wp-content/uploads/2025/10/3333333333-10.jpg',
    ],
    [
        'remote_id' => 11,
        'title' => '"وان أوف وان" تطلق مشروعين في الشيخ زايد والتجمع السادس',
        'image_url' => 'https://economyplusme.com/app/uploads/2025/10/1761143926_638_3195682_img20251022wa0014-2048x1820.jpg',
    ],
    [
        'remote_id' => 12,
        'title' => '"وان أوف وان" العقارية تطلق مشروعين جديدين في السوق المصري',
        'image_url' => 'https://media.osoulmisrmagazine.com/2025/10/large/27771998921398202510220554305430.jpg',
    ],
    [
        'remote_id' => 13,
        'title' => '"وان أوف وان" تطلق مشروعين استراتيجيين يجسدان رؤيتها',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/10/88a4db169dfedada5f0e1c651f51f4df.webp',
    ],
    [
        'remote_id' => 1,
        'title' => '"وان أوف وان" للتنمية العمرانية تبدأ أعمالها رسميًا في مصر باستثمارات 150 مليار جنيه',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 2,
        'title' => '"وان أوف وان" للتنمية العمرانية تبدأ أعمالها رسميًا في السوق المصري بمحفظة تضم أربعة أراضٍ استراتيجية',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 3,
        'title' => 'برؤية تنسج العلاقة بين الإنسان والمكان - وان أوف وان',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 4,
        'title' => '150 مليار جنيه.. "وان أوف وان" تدخل سوق التطوير العقاري',
        'image_url' => 'https://business.ahram.org.eg/Media/News/2025/9/8/19_2025-638929386883505210-350.jpg',
    ],
    [
        'remote_id' => 6,
        'title' => 'وان أوف وان تطلق أعمالها في السوق المصري بأربعة أراضٍ استراتيجية',
        'image_url' => 'https://invest-gate.me/wp-content/uploads/2025/09/IMG-20250908-WA0003-750x500.jpg',
    ],
    [
        'remote_id' => 8,
        'title' => 'وان أوف وان تبدأ أعمالها رسميًا في السوق المصري',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 9,
        'title' => 'وان أوف وان للتنمية تخطط لاستثمار أكثر من 150 مليار جنيه',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 10,
        'title' => 'وان أوف وان للتنمية العمرانية تبدأ أعمالها رسميًا في مصر',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
];

echo "=== Updating Arabic Articles Images ===\n\n";

foreach ($arabicArticles as $article) {
    echo "Processing: {$article['title']}\n";
    
    try {
        // Find post by title
        $post = Post::where('name', $article['title'])->first();
        
        if (!$post) {
            echo "  ✗ Post not found\n\n";
            continue;
        }
        
        // Download image
        $imageUrl = $article['image_url'];
        $extension = pathinfo(parse_url($imageUrl, PHP_URL_PATH), PATHINFO_EXTENSION);
        if (empty($extension) || !in_array(strtolower($extension), ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
            $extension = 'jpg';
        }
        
        $filename = 'posts/' . Str::slug($article['title']) . '-' . uniqid() . '.' . $extension;
        
        echo "  Downloading image: {$imageUrl}\n";
        
        $response = Http::withOptions([
            'verify' => false,
            'timeout' => 30,
        ])->get($imageUrl);
        
        if ($response->successful()) {
            Storage::disk('public')->put($filename, $response->body());
            $localImageUrl = Storage::disk('public')->url($filename);
            
            // Update post image
            $post->image = $localImageUrl;
            $post->save();
            
            echo "  ✓ Image updated: {$localImageUrl}\n\n";
        } else {
            echo "  ✗ Failed to download image: HTTP {$response->status()}\n\n";
        }
        
    } catch (\Exception $e) {
        echo "  ✗ Error: {$e->getMessage()}\n\n";
    }
}

echo "=== Update Complete ===\n";
