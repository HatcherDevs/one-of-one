<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$post = \Botble\Blog\Models\Post::find(47);

echo "=== Post URL Generation ===" . PHP_EOL;
echo "ID: " . $post->id . PHP_EOL;
echo "Title: " . $post->name . PHP_EOL;
echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
echo "URL: " . $post->url . PHP_EOL;

// Check if URL has language prefix
echo PHP_EOL . "URL Analysis:" . PHP_EOL;
echo "Has '/ar/' prefix: " . (strpos($post->url, '/ar/') !== false ? 'YES' : 'NO') . PHP_EOL;
echo "Has '/en/' prefix: " . (strpos($post->url, '/en/') !== false ? 'YES' : 'NO') . PHP_EOL;

// Try to get URL with language
if (method_exists($post, 'getUrlAttribute')) {
    echo PHP_EOL . "URL Attribute exists" . PHP_EOL;
}

// Check language meta
$langMeta = \DB::table('language_meta')
    ->where('reference_id', $post->id)
    ->where('reference_type', 'Botble\Blog\Models\Post')
    ->first();

echo PHP_EOL . "Language Meta:" . PHP_EOL;
echo "Code: " . ($langMeta->lang_meta_code ?? 'NULL') . PHP_EOL;
