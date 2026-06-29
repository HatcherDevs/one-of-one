<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;

$posts = Post::whereHas('categories', function($q) { 
    $q->where('id', 7); 
})->orderBy('created_at', 'desc')->get(['id', 'name', 'image']);

echo "=== English Posts ===\n\n";
foreach ($posts as $post) {
    echo "ID: {$post->id}\n";
    echo "Title: {$post->name}\n";
    echo "Image: " . basename($post->image) . "\n";
    echo "---\n";
}
