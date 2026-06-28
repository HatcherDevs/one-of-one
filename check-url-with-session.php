<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Set session to Arabic
session(['language' => 'ar']);

$post = \Botble\Blog\Models\Post::find(47);

echo "=== Post URL with Arabic Session ===" . PHP_EOL;
echo "ID: " . $post->id . PHP_EOL;
echo "URL: " . $post->url . PHP_EOL;

// Check if URL has /ar/ prefix
if (strpos($post->url, '/ar/') !== false) {
    echo "Has /ar/ prefix: YES" . PHP_EOL;
    echo "URL without /ar/: " . str_replace('/ar/', '/', $post->url) . PHP_EOL;
} else {
    echo "Has /ar/ prefix: NO" . PHP_EOL;
}

// Set session to English
session(['language' => 'en']);

$post = \Botble\Blog\Models\Post::find(47);

echo PHP_EOL . "=== Post URL with English Session ===" . PHP_EOL;
echo "ID: " . $post->id . PHP_EOL;
echo "URL: " . $post->url . PHP_EOL;

// Check if URL has /en/ prefix
if (strpos($post->url, '/en/') !== false) {
    echo "Has /en/ prefix: YES" . PHP_EOL;
    echo "URL without /en/: " . str_replace('/en/', '/', $post->url) . PHP_EOL;
} else {
    echo "Has /en/ prefix: NO" . PHP_EOL;
}
