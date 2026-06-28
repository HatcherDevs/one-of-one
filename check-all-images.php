<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$posts = Botble\Blog\Models\Post::whereHas('categories', function($q) { 
    $q->where('id', 8); 
})->get(['id', 'name', 'image']);

echo "=== All Arabic Posts Images ===\n\n";
foreach ($posts as $post) {
    echo "ID: {$post->id}\n";
    echo "Title: {$post->name}\n";
    echo "Image: {$post->image}\n";
    echo "---\n";
}
