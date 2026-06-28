<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = \Botble\Blog\Models\Post::find(47);

echo "=== Image Debug ===" . PHP_EOL;
echo "Image URL: " . $post->image . PHP_EOL;

// Check if it's an external URL
if (strpos($post->image, 'http') === 0) {
    echo "Type: External URL" . PHP_EOL;
    
    // Try to get the image
    echo "Testing image accessibility..." . PHP_EOL;
    $headers = @get_headers($post->image);
    if ($headers && strpos($headers[0], '200') !== false) {
        echo "Image is accessible: YES" . PHP_EOL;
    } else {
        echo "Image is accessible: NO" . PHP_EOL;
    }
} else {
    echo "Type: Local path" . PHP_EOL;
    $fullPath = public_path($post->image);
    echo "Full path: " . $fullPath . PHP_EOL;
    echo "File exists: " . (file_exists($fullPath) ? 'YES' : 'NO') . PHP_EOL;
}

// Check RvMedia
echo PHP_EOL . "=== RvMedia Test ===" . PHP_EOL;
echo "RvMedia::getImageUrl(): " . \RvMedia::getImageUrl($post->image, null, false, \RvMedia::getDefaultImage()) . PHP_EOL;
