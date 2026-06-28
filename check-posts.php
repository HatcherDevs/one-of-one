<?php
require __DIR__ . '/vendor/autoload.php';
$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

$arPosts = \Botble\Blog\Models\Post::whereHas('categories', function($q) { $q->where('id', 8); })->count();
$enPosts = \Botble\Blog\Models\Post::whereHas('categories', function($q) { $q->where('id', 7); })->count();
$arFeatured = \Botble\Blog\Models\Post::where('is_featured', 1)->whereHas('categories', function($q) { $q->where('id', 8); })->count();
$enFeatured = \Botble\Blog\Models\Post::where('is_featured', 1)->whereHas('categories', function($q) { $q->where('id', 7); })->count();

echo "AR Posts: $arPosts (Featured: $arFeatured)\n";
echo "EN Posts: $enPosts (Featured: $enFeatured)\n";
