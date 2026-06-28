<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check if language plugin adds prefix to URL
$post = \Botble\Blog\Models\Post::find(47);

echo "=== Post URL with Language ===" . PHP_EOL;
echo "Post ID: " . $post->id . PHP_EOL;
echo "Post URL: " . $post->url . PHP_EOL;

// Get language meta
$langMeta = \DB::table('language_meta')
    ->where('reference_id', $post->id)
    ->where('reference_type', 'Botble\Blog\Models\Post')
    ->first();

if ($langMeta) {
    echo "Language: " . $langMeta->lang_meta_code . PHP_EOL;
    
    // Try to get URL with language prefix
    $langCode = $langMeta->lang_meta_code;
    if ($langCode === 'ar') {
        $urlWithLang = str_replace('/news/', '/ar/news/', $post->url);
        echo "URL with language prefix: " . $urlWithLang . PHP_EOL;
    }
}

// Check if there's a route for posts with language prefix
echo PHP_EOL . "=== Checking Routes ===" . PHP_EOL;
$routes = app('router')->getRoutes();
foreach ($routes as $route) {
    $uri = $route->uri();
    if (strpos($uri, 'news') !== false && strpos($uri, '{slug}') !== false) {
        echo "Route: " . $route->methods()[0] . " " . $uri . " -> " . ($route->getName() ?? 'unnamed') . PHP_EOL;
    }
}
