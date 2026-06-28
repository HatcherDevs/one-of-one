<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;

$postId = 47;
$imageUrl = 'https://gate.ahram.org.eg/Media/News/2026/6/9/19_2026-639166372507381311-738.jpg';

echo "Downloading image for post {$postId}...\n";
echo "URL: {$imageUrl}\n";

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
        $filename = 'posts/' . $postId . '-' . uniqid() . '.' . $extension;
        
        // Save to storage
        Storage::disk('public')->put($filename, $response->body());
        
        // Update post
        $post = Post::find($postId);
        $post->image = Storage::disk('public')->url($filename);
        $post->save();
        
        echo "✓ Image downloaded and saved: {$post->image}\n";
    } else {
        echo "✗ Failed: HTTP {$response->status()}\n";
    }
} catch (\Exception $e) {
    echo "✗ Error: {$e->getMessage()}\n";
}
