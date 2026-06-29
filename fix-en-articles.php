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

// Fix English Articles with missing images
$englishArticlesToFix = [
    [
        'title' => 'One of One Wins Creative Brand Communication Award at Invest-Gate ACE Awards 2025',
        'date' => '2025-12-10',
        'source' => 'Invest-Gate',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback image
    ],
    [
        'title' => '"One Of One" Strengthens Its Presence in the Egyptian Market with the Launch of Two Strategic Projects',
        'date' => '2025-10-22',
        'source' => 'Invest-Gate',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback image
    ],
    [
        'title' => 'One of One Officially Launches in The Egyptian Market with Four Strategic Land Plots',
        'date' => '2025-09-08',
        'source' => 'Invest-Gate',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback image
    ],
];

echo "=== Fixing English Articles with Missing Images ===\n\n";

// Get English category
$englishCategory = Category::where('id', 7)->first();

if (!$englishCategory) {
    echo "✗ English category not found!\n";
    exit(1);
}

echo "Found English category: {$englishCategory->name}\n\n";

foreach ($englishArticlesToFix as $article) {
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
        $post->categories()->attach($englishCategory->id);
        
        echo "  ✓ Post created with ID: {$post->id}\n\n";
        
    } catch (\Exception $e) {
        echo "  ✗ Error: {$e->getMessage()}\n\n";
    }
}

echo "=== Fix Complete ===\n";
