<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = \Botble\Blog\Models\Post::with(['slugable'])->find(47);

if ($post) {
    echo "=== Article ID 47 ===" . PHP_EOL;
    echo "Title: " . $post->name . PHP_EOL;
    echo "Image: " . $post->image . PHP_EOL;
    echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
    echo "URL: " . $post->url . PHP_EOL;
    
    // Check if image exists
    $imagePath = public_path($post->image);
    if (file_exists($imagePath)) {
        echo "Image exists: YES" . PHP_EOL;
        echo "Image path: " . $imagePath . PHP_EOL;
    } else {
        echo "Image exists: NO" . PHP_EOL;
        echo "Expected path: " . $imagePath . PHP_EOL;
    }
} else {
    echo "Article not found!" . PHP_EOL;
}
