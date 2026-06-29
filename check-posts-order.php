<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;

echo "=== Current Posts Order ===\n\n";

$arabicPosts = Post::whereHas('categories', function($q) { 
    $q->where('id', 8); 
})->orderBy('created_at', 'desc')->get(['id', 'name', 'created_at']);

echo "Arabic Posts (Category 8):\n";
foreach ($arabicPosts as $post) {
    echo "ID: {$post->id} | Date: {$post->created_at->format('Y-m-d')} | {$post->name}\n";
}

echo "\n";

$englishPosts = Post::whereHas('categories', function($q) { 
    $q->where('id', 7); 
})->orderBy('created_at', 'desc')->get(['id', 'name', 'created_at']);

echo "English Posts (Category 7):\n";
foreach ($englishPosts as $post) {
    echo "ID: {$post->id} | Date: {$post->created_at->format('Y-m-d')} | {$post->name}\n";
}
