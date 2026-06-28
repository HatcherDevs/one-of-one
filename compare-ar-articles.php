<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$posts = Botble\Blog\Models\Post::whereHas('categories', function($q) { 
    $q->where('id', 8); 
})->orderBy('created_at', 'desc')->get(['id', 'name', 'image', 'created_at']);

echo "=== Arabic Posts in Database ===\n\n";
foreach ($posts as $post) {
    echo "ID: {$post->id}\n";
    echo "Title: {$post->name}\n";
    echo "Image: {$post->image}\n";
    echo "Date: {$post->created_at}\n";
    echo "---\n";
}
