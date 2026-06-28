<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = \Botble\Blog\Models\Post::find(47);

echo "=== Post URL Debug ===" . PHP_EOL;
echo "ID: " . $post->id . PHP_EOL;
echo "Title: " . $post->name . PHP_EOL;
echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
echo "URL: " . $post->url . PHP_EOL;

// Check if post has url method
if (method_exists($post, 'getUrlAttribute')) {
    echo "Has getUrlAttribute: YES" . PHP_EOL;
} else {
    echo "Has getUrlAttribute: NO" . PHP_EOL;
}

// Check if model uses HasSlug trait
$traits = class_uses($post);
echo PHP_EOL . "Traits: " . implode(', ', array_keys($traits)) . PHP_EOL;

// Check slugable
if (method_exists($post, 'slugable')) {
    echo "Has slugable: YES" . PHP_EOL;
    $slug = $post->slugable;
    if ($slug) {
        echo "Slug key: " . $slug->key . PHP_EOL;
        echo "Slug prefix: " . ($slug->prefix ?? 'NULL') . PHP_EOL;
    }
} else {
    echo "Has slugable: NO" . PHP_EOL;
}
