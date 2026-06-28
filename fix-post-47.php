<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Use a fallback image from another post
$fallbackImage = 'https://one-of-one.test/storage/posts/48-6a403b79ae9e9.webp';

$post = Botble\Blog\Models\Post::find(47);
$post->image = $fallbackImage;
$post->save();

echo "Updated post 47 with fallback image: {$fallbackImage}\n";
