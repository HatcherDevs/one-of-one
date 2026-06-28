<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Set session to Arabic
session(['language' => 'ar']);

$post = \Botble\Blog\Models\Post::find(47);

echo "=== Post URL Debug ===" . PHP_EOL;
echo "ID: " . $post->id . PHP_EOL;
echo "URL: " . $post->url . PHP_EOL;

// Check if URL has /ar/ prefix
if (strpos($post->url, '/ar/') !== false) {
    echo "Has /ar/ prefix: YES" . PHP_EOL;
    echo "URL without /ar/: " . str_replace('/ar/', '/', $post->url) . PHP_EOL;
} else {
    echo "Has /ar/ prefix: NO" . PHP_EOL;
}

// Check slug
echo PHP_EOL . "=== Slug ===" . PHP_EOL;
echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;

// Check language meta
$langMeta = \DB::table('language_meta')
    ->where('reference_id', $post->id)
    ->where('reference_type', 'Botble\Blog\Models\Post')
    ->first();

echo PHP_EOL . "=== Language Meta ===" . PHP_EOL;
echo "Code: " . ($langMeta->lang_meta_code ?? 'NULL') . PHP_EOL;
