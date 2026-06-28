<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check if language_meta table exists
try {
    $langMetas = \DB::table('language_meta')->get();
    echo "=== Language Meta Table ===" . PHP_EOL;
    echo "Total records: " . $langMetas->count() . PHP_EOL;
    
    // Check for post language metas
    $postLangMetas = $langMetas->where('reference_type', 'Botble\Blog\Models\Post');
    echo "Post language metas: " . $postLangMetas->count() . PHP_EOL;
    
    if ($postLangMetas->count() > 0) {
        echo PHP_EOL . "Sample post language metas:" . PHP_EOL;
        foreach ($postLangMetas->take(5) as $meta) {
            echo "Post ID: " . $meta->reference_id . " | Lang Code: " . $meta->lang_code . PHP_EOL;
        }
    }
} catch (\Exception $e) {
    echo "Error: " . $e->getMessage() . PHP_EOL;
}
