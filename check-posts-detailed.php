<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$arPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->orderBy('created_at', 'desc')
    ->get(['id', 'name']);

$enPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 7))
    ->orderBy('created_at', 'desc')
    ->get(['id', 'name']);

echo "=== Arabic Posts (Category 8) - Total: " . $arPosts->count() . " ===" . PHP_EOL;
foreach ($arPosts as $post) {
    echo $post->id . ': ' . $post->name . PHP_EOL;
}

echo PHP_EOL . "=== English Posts (Category 7) - Total: " . $enPosts->count() . " ===" . PHP_EOL;
foreach ($enPosts as $post) {
    echo $post->id . ': ' . $post->name . PHP_EOL;
}
