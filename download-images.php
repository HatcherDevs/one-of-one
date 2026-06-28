<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;

// Get all posts with external images
$posts = Post::whereIn('id', [38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63])->get();

echo "=== Downloading Images ===\n\n";

foreach ($posts as $post) {
    $imageUrl = $post->image;
    
    if (empty($imageUrl)) {
        echo "ID: {$post->id} - No image\n";
        continue;
    }
    
    // Check if image is already local
    if (strpos($imageUrl, 'one-of-one.test') !== false || strpos($imageUrl, '/storage/') !== false || strpos($imageUrl, '/posts/') !== false) {
        echo "ID: {$post->id} - Already local: {$imageUrl}\n";
        continue;
    }
    
    echo "ID: {$post->id} - Downloading: {$imageUrl}\n";
    
    try {
        // Download image
        $response = Http::withOptions([
            'verify' => false,
            'timeout' => 30,
        ])->get($imageUrl);
        
        if ($response->successful()) {
            // Get file extension
            $extension = pathinfo(parse_url($imageUrl, PHP_URL_PATH), PATHINFO_EXTENSION);
            if (empty($extension) || !in_array(strtolower($extension), ['jpg', 'jpeg', 'png', 'gif', 'webp'])) {
                $extension = 'jpg';
            }
            
            // Generate filename
            $filename = 'posts/' . $post->id . '-' . uniqid() . '.' . $extension;
            
            // Save to storage
            Storage::disk('public')->put($filename, $response->body());
            
            // Update post
            $post->image = Storage::disk('public')->url($filename);
            $post->save();
            
            echo "  ✓ Saved: {$post->image}\n";
        } else {
            echo "  ✗ Failed: HTTP {$response->status()}\n";
        }
    } catch (\Exception $e) {
        echo "  ✗ Error: {$e->getMessage()}\n";
    }
    
    echo "\n";
}

echo "=== Done ===\n";
