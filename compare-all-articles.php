<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$posts = Botble\Blog\Models\Post::whereHas('categories', function($q) { 
    $q->where('id', 8); 
})->orderBy('created_at', 'desc')->get(['id', 'name', 'content', 'image', 'created_at']);

echo "=== Arabic Posts Content Length ===\n\n";
foreach ($posts as $post) {
    $contentLength = strlen(strip_tags($post->content));
    echo "ID: {$post->id}\n";
    echo "Title: {$post->name}\n";
    echo "Content Length: {$contentLength} characters\n";
    echo "Image: " . basename($post->image) . "\n";
    echo "Date: {$post->created_at->format('Y-m-d')}\n";
    echo "---\n";
}
