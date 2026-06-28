<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$posts = \Botble\Blog\Models\Post::whereIn('id', [47, 48, 38, 44])->get(['id', 'name', 'image']);

foreach ($posts as $post) {
    echo "ID: " . $post->id . PHP_EOL;
    echo "Title: " . $post->name . PHP_EOL;
    echo "Image: " . $post->image . PHP_EOL;
    echo "---" . PHP_EOL;
}
