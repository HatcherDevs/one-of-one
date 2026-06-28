<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check slugs for Arabic and English posts
$arPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->with('slugable')
    ->orderBy('created_at', 'desc')
    ->take(3)
    ->get(['id', 'name']);

$enPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 7))
    ->with('slugable')
    ->orderBy('created_at', 'desc')
    ->take(3)
    ->get(['id', 'name']);

echo "=== Arabic Posts Slugs ===" . PHP_EOL;
foreach ($arPosts as $post) {
    echo "ID: " . $post->id . " | Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
}

echo PHP_EOL . "=== English Posts Slugs ===" . PHP_EOL;
foreach ($enPosts as $post) {
    echo "ID: " . $post->id . " | Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
}
