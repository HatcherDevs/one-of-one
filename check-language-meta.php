<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check all Arabic posts
$arPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->with(['slugable', 'languageMeta'])
    ->orderBy('created_at', 'desc')
    ->get(['id', 'name', 'status', 'language_meta_id']);

echo "=== Arabic Posts Language Check ===" . PHP_EOL;
foreach ($arPosts as $post) {
    echo "ID: " . $post->id . PHP_EOL;
    echo "Title: " . $post->name . PHP_EOL;
    echo "Status: " . $post->status . PHP_EOL;
    echo "Language Meta ID: " . ($post->language_meta_id ?? 'NULL') . PHP_EOL;
    echo "Language: " . ($post->languageMeta ? $post->languageMeta->code : 'NULL') . PHP_EOL;
    echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
    echo "---" . PHP_EOL;
}
