<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = Botble\Blog\Models\Post::find(49);

echo "=== Article ID 49 ===\n\n";
echo "Title: {$post->name}\n\n";
echo "Content:\n{$post->content}\n\n";
echo "Image: {$post->image}\n";
echo "Date: {$post->created_at}\n";
