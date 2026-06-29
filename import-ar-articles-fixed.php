<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Botble\Blog\Models\Category;
use Botble\Slug\Facades\SlugHelper;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

// Arabic Articles Data (from official website)
$arabicArticles = [
    [
        'remote_id' => 27,
        'title' => 'وان أوف وان تنضم للميثاق العالمي للأمم المتحدة في مصر لترسيخ استدامة الأعمال وتمكين المرأة قياديًا',
        'date' => '2026-06-10',
        'source' => 'بوابة الأهرام',
        'image_url' => 'https://gate.ahram.org.eg/Media/News/2026/6/9/19_2026-639166372507381311-738.jpg',
    ],
    [
        'remote_id' => 19,
        'title' => 'وان أوف وان للتنمية العمرانية تطلق مشروعين في زايد والتجمع السادس بمساحة إجمالية 60 فدان',
        'date' => '2025-10-22',
        'source' => 'Hapi Journal',
        'image_url' => 'https://hapijournal.com/wp-content/uploads/2025/10/13-2.jpg.webp',
    ],
    [
        'remote_id' => 18,
        'title' => 'مصطفى صلاح: شركة "وان أوف وان" تقوم على 3 ركائز أساسية',
        'date' => '2025-10-22',
        'source' => 'العقارية',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 17,
        'title' => '"وان أوف وان" تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين يجسدان رؤيتها',
        'date' => '2025-10-22',
        'source' => 'العالم اليوم',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/10/88a4db169dfedada5f0e1c651f51f4df.webp',
    ],
    [
        'remote_id' => 16,
        'title' => '«وان أوف وان» تؤكد حضورها في السوق المصري بإطلاق مشروعين استراتيجيين',
        'date' => '2025-10-22',
        'source' => 'Property Plus',
        'image_url' => 'https://propertypluseg.com/wp-content/uploads/2025/10/3-7.png',
    ],
    [
        'remote_id' => 15,
        'title' => 'إطلاق مشروعي Bridges وGrounds بالشيخ زايد والتجمع السادس علي مساحة 60 فدان',
        'date' => '2025-10-22',
        'source' => 'عقارات See News',
        'image_url' => 'https://aqarat.see.news/wp-content/uploads/2025/10/3333333333-10.jpg',
    ],
    [
        'remote_id' => 11,
        'title' => '"وان أوف وان" تطلق مشروعين في الشيخ زايد والتجمع السادس',
        'date' => '2025-10-22',
        'source' => 'Economy Plus',
        'image_url' => 'https://economyplusme.com/app/uploads/2025/10/1761143926_638_3195682_img20251022wa0014-2048x1820.jpg',
    ],
    [
        'remote_id' => 12,
        'title' => '"وان أوف وان" العقارية تطلق مشروعين جديدين في السوق المصري',
        'date' => '2025-10-22',
        'source' => 'أصول مصر',
        'image_url' => 'https://media.osoulmisrmagazine.com/2025/10/large/27771998921398202510220554305430.jpg',
    ],
    [
        'remote_id' => 13,
        'title' => '"وان أوف وان" تطلق مشروعين استراتيجيين يجسدان رؤيتها',
        'date' => '2025-10-22',
        'source' => 'العالم اليوم',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/10/88a4db169dfedada5f0e1c651f51f4df.webp',
    ],
    [
        'remote_id' => 1,
        'title' => '"وان أوف وان" للتنمية العمرانية تبدأ أعمالها رسميًا في مصر باستثمارات 150 مليار جنيه',
        'date' => '2025-09-09',
        'source' => 'العالم اليوم',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 2,
        'title' => '"وان أوف وان" للتنمية العمرانية تبدأ أعمالها رسميًا في السوق المصري بمحفظة تضم أربعة أراضٍ استراتيجية',
        'date' => '2025-09-08',
        'source' => 'العالم اليوم',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 3,
        'title' => 'برؤية تنسج العلاقة بين الإنسان والمكان - وان أوف وان',
        'date' => '2025-09-09',
        'source' => 'العالم اليوم',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 4,
        'title' => '150 مليار جنيه.. "وان أوف وان" تدخل سوق التطوير العقاري',
        'date' => '2025-09-08',
        'source' => 'أخبار اليوم',
        'image_url' => 'https://business.ahram.org.eg/Media/News/2025/9/8/19_2025-638929386883505210-350.jpg',
    ],
    [
        'remote_id' => 6,
        'title' => 'وان أوف وان تطلق أعمالها في السوق المصري بأربعة أراضٍ استراتيجية',
        'date' => '2025-09-08',
        'source' => 'Invest-Gate',
        'image_url' => 'https://invest-gate.me/wp-content/uploads/2025/09/IMG-20250908-WA0003-750x500.jpg',
    ],
    [
        'remote_id' => 8,
        'title' => 'وان أوف وان تبدأ أعمالها رسميًا في السوق المصري',
        'date' => '2025-09-08',
        'source' => 'Property Plus',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 9,
        'title' => 'وان أوف وان للتنمية تخطط لاستثمار أكثر من 150 مليار جنيه',
        'date' => '2025-09-08',
        'source' => 'أموال الغد',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
    [
        'remote_id' => 10,
        'title' => 'وان أوف وان للتنمية العمرانية تبدأ أعمالها رسميًا في مصر',
        'date' => '2025-09-08',
        'source' => 'Hapi Journal',
        'image_url' => 'https://alalamelyoum.co/wp-content/uploads/2025/09/b46f4256080def3dbf67d015274cac0a.webp',
    ],
];

echo "=== Importing Arabic Articles ===\n\n";

// Get Arabic category
$arabicCategory = Category::where('id', 8)->first();

if (!$arabicCategory) {
    echo "✗ Arabic category not found!\n";
    exit(1);
}

echo "Found Arabic category: {$arabicCategory->name}\n\n";

foreach ($arabicArticles as $article) {
    echo "Processing: {$article['title']}\n";
    
    try {
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
            echo "  ✓ Image saved: {$localImageUrl}\n";
        } else {
            echo "  ✗ Failed to download image: HTTP {$response->status()}\n";
            $localImageUrl = null;
        }
        
        // Create post
        $post = new Post();
        $post->name = $article['title'];
        $post->description = $article['title'];
        $post->content = '<p>' . $article['title'] . '</p>'; // Will be updated later with full content
        $post->image = $localImageUrl;
        $post->created_at = $article['date'];
        $post->updated_at = now();
        $post->author_id = 1;
        $post->author_type = 'Botble\ACL\Models\User';
        $post->status = 'published';
        $post->save();
        
        // Create slug using SlugHelper
        SlugHelper::createSlug($post);
        
        // Attach category
        $post->categories()->attach($arabicCategory->id);
        
        echo "  ✓ Post created with ID: {$post->id}\n\n";
        
    } catch (\Exception $e) {
        echo "  ✗ Error: {$e->getMessage()}\n\n";
    }
}

echo "=== Import Complete ===\n";
