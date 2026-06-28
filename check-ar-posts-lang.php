<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check Arabic posts language meta
$arPosts = \Botble\Blog\Models\Post::whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->orderBy('created_at', 'desc')
    ->get(['id', 'name']);

echo "=== Arabic Posts Language Meta ===" . PHP_EOL;
foreach ($arPosts as $post) {
    $langMeta = \DB::table('language_meta')
        ->where('reference_id', $post->id)
        ->where('reference_type', 'Botble\Blog\Models\Post')
        ->first();
    
    echo "ID: " . $post->id . " | Lang: " . ($langMeta->lang_meta_code ?? 'NULL') . PHP_EOL;
}
