<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Slug\Models\Slug;
use Botble\Page\Models\Page;

// Add prefix 'ar' to Arabic page slugs
$arSlugs = Slug::where('reference_type', Page::class)
    ->whereIn('reference_id', [18, 19])
    ->get();

foreach ($arSlugs as $slug) {
    $page = Page::find($slug->reference_id);
    echo "Before: {$slug->key} (prefix: {$slug->prefix}) - {$page->name}\n";
    $slug->update(['prefix' => 'ar']);
    echo "After: {$slug->key} (prefix: {$slug->prefix}) - {$page->name}\n";
}

\Illuminate\Support\Facades\Artisan::call('cache:clear');
echo "\nDone!\n";
