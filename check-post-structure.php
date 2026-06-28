<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check post structure
$post = \Botble\Blog\Models\Post::first();

echo "=== Post Model Structure ===" . PHP_EOL;
echo "Table: " . $post->getTable() . PHP_EOL;
echo "Fillable: " . implode(', ', $post->getFillable()) . PHP_EOL;

// Check if language_meta relationship exists
if (method_exists($post, 'languageMeta')) {
    echo "Has languageMeta relationship: YES" . PHP_EOL;
    $langMeta = $post->languageMeta;
    if ($langMeta) {
        echo "Language Meta: " . json_encode($langMeta) . PHP_EOL;
    } else {
        echo "Language Meta: NULL" . PHP_EOL;
    }
} else {
    echo "Has languageMeta relationship: NO" . PHP_EOL;
}

// Check slug
echo PHP_EOL . "=== Slug Check ===" . PHP_EOL;
echo "Slug: " . ($post->slugable->key ?? 'N/A') . PHP_EOL;
echo "URL: " . $post->url . PHP_EOL;
