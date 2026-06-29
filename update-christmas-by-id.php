<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

// Find Christmas article by ID
$post = Post::find(83);

if ($post) {
    echo "Found: {$post->name}\n";
    
    $imageUrl = 'https://oneofone.com.eg/images/news/DSC_2895.JPG';
    $extension = 'JPG';
    $filename = 'posts/' . Str::slug($post->name) . '-' . uniqid() . '.' . $extension;
    
    echo "  Downloading image: {$imageUrl}\n";
    
    $response = Http::withOptions([
        'verify' => false,
        'timeout' => 30,
    ])->get($imageUrl);
    
    if ($response->successful()) {
        Storage::disk('public')->put($filename, $response->body());
        $localImageUrl = Storage::disk('public')->url($filename);
        
        $post->image = $localImageUrl;
        $post->save();
        
        echo "  ✓ Image updated: {$localImageUrl}\n";
    } else {
        echo "  ✗ Failed to download image: HTTP {$response->status()}\n";
    }
} else {
    echo "Post not found\n";
}
