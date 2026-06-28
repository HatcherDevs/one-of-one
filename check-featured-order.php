<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Get all featured posts ordered by created_at desc
$featured = \Botble\Blog\Models\Post::where('is_featured', 1)
    ->whereHas('categories', fn($q) => $q->where('categories.id', 8))
    ->orderBy('created_at', 'desc')
    ->get(['id', 'name', 'is_featured', 'created_at', 'updated_at']);

echo "=== Featured Posts (Arabic) - Ordered by created_at DESC ===" . PHP_EOL;
foreach ($featured as $f) {
    echo $f->id . ": " . $f->name . PHP_EOL;
    echo "   Created: " . $f->created_at . " | Updated: " . $f->updated_at . PHP_EOL;
}

echo PHP_EOL . "=== First Featured Post (should be displayed) ===" . PHP_EOL;
$first = $featured->first();
if ($first) {
    echo "ID: " . $first->id . PHP_EOL;
    echo "Title: " . $first->name . PHP_EOL;
    echo "Created: " . $first->created_at . PHP_EOL;
}
