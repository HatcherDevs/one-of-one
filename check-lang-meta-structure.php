<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check language_meta table structure
$langMetas = \DB::table('language_meta')
    ->where('reference_type', 'Botble\Blog\Models\Post')
    ->get();

echo "=== Post Language Metas ===" . PHP_EOL;
echo "Total: " . $langMetas->count() . PHP_EOL . PHP_EOL;

if ($langMetas->count() > 0) {
    echo "Columns: " . implode(', ', array_keys((array)$langMetas->first())) . PHP_EOL . PHP_EOL;
    
    echo "Sample records:" . PHP_EOL;
    foreach ($langMetas->take(5) as $meta) {
        echo "Post ID: " . $meta->reference_id . PHP_EOL;
        echo "Lang Meta Code: " . ($meta->lang_meta_code ?? 'N/A') . PHP_EOL;
        echo "---" . PHP_EOL;
    }
}
