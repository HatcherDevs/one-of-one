<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;

// Get all posts
$posts = Post::all();

echo "=== Deleting All Posts ===\n\n";
echo "Total posts: {$posts->count()}\n\n";

foreach ($posts as $post) {
    echo "Deleting post ID: {$post->id} - {$post->name}\n";
    $post->delete();
}

echo "\n✓ All posts deleted successfully!\n";
