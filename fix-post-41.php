<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Use a fallback image from another post
$fallbackImage = 'https://one-of-one.test/storage/posts/38-6a403b6c4f67c.png';

$post = Botble\Blog\Models\Post::find(41);
$post->image = $fallbackImage;
$post->save();

echo "Updated post 41 with fallback image: {$fallbackImage}\n";
