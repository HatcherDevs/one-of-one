<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check article 47
$post = \Botble\Blog\Models\Post::with(['categories', 'slugable'])->find(47);

if ($post) {
    echo "=== Article ID 47 ===" . PHP_EOL;
    echo "Title: " . $post->name . PHP_EOL;
    echo "Description: " . $post->description . PHP_EOL;
    echo "Is Featured: " . ($post->is_featured ? 'Yes' : 'No') . PHP_EOL;
    echo "Created at: " . $post->created_at . PHP_EOL;
    echo "Categories: " . $post->categories->pluck('name')->implode(', ') . PHP_EOL;
    echo "Slug: " . $post->slugable->key ?? 'N/A' . PHP_EOL;
} else {
    echo "Article 47 not found!" . PHP_EOL;
}

echo PHP_EOL . "=== All Featured Posts (Arabic) ===" . PHP_EOL;
$featured = \Botble\Blog\Models\Post::where('is_featured', 1)
    ->whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->orderBy('created_at', 'desc')
    ->get(['id', 'name', 'is_featured', 'created_at']);

foreach ($featured as $f) {
    echo $f->id . ": " . $f->name . " (Featured: " . ($f->is_featured ? 'Yes' : 'No') . ", Date: " . $f->created_at . ")" . PHP_EOL;
}
