<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = Botble\Blog\Models\Post::find(41);
echo "ID: {$post->id}\n";
echo "Title: {$post->name}\n";
echo "Image: {$post->image}\n";
