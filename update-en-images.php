<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

// English Articles with correct images from official website
$englishArticles = [
    [
        'title' => '"One of One" Announces Details of "Grounds" Project During the Opening of the Company\'s Headquarters',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png',
    ],
    [
        'title' => 'One of One Collaborates with iRead to enhance human awareness and build a cultured society',
        'image_url' => 'https://oneofone.com.eg/images/news/One-of-One-Collaborates-with-iRead.jpg',
    ],
    [
        'title' => 'One of One Celebrates Christmas & New Year at Zayed\'s Town Hall',
        'image_url' => 'https://oneofone.com.eg/images/news/DSC_2895.JPG',
    ],
    [
        'title' => 'One of One Wins Creative Brand Communication Award at Invest-Gate ACE Awards 2025',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback
    ],
    [
        'title' => 'Bridges Selection Day Achieves Strong On-Ground Sales',
        'image_url' => 'https://oneofone.com.eg/images/news/BridgesSelectionDay.jpeg',
    ],
    [
        'title' => 'One of One CEO Participates in IREIS 2025 Summit: Building Beyond Skylines',
        'image_url' => 'https://oneofone.com.eg/images/news/DSC02301.JPG',
    ],
    [
        'title' => '"One Of One" Strengthens Its Presence in the Egyptian Market with the Launch of Two Strategic Projects',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback
    ],
    [
        'title' => 'One of One Officially Launches in The Egyptian Market with Four Strategic Land Plots',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback
    ],
    [
        'title' => 'One of One Officially Launches in Egyptian Market - Zawya Press Release',
        'image_url' => 'https://oneofone.com.eg/images/news/Moustafa-wider-image-1.png', // Fallback
    ],
];

echo "=== Updating English Articles Images ===\n\n";

foreach ($englishArticles as $article) {
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
