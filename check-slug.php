<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = \Botble\Blog\Models\Post::with(['slugable'])->find(47);

if ($post) {
    echo "=== Article ID 47 ===" . PHP_EOL;
    echo "Title: " . $post->name . PHP_EOL;
    echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
    echo "URL: " . $post->url . PHP_EOL;
    echo "Status: " . $post->status . PHP_EOL;
    echo "Language: " . $post->language_meta_id . PHP_EOL;
    
    // Check if slug has language prefix
    $slug = $post->slugable->key ?? '';
    echo PHP_EOL . "Slug prefix check:" . PHP_EOL;
    echo "Has 'ar/' prefix: " . (strpos($slug, 'ar/') === 0 ? 'YES' : 'NO') . PHP_EOL;
} else {
    echo "Article not found!" . PHP_EOL;
}
