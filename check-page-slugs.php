<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;
use Botble\Slug\Models\Slug;

echo "=== Pages ===\n";
$pages = Page::all(['id', 'name']);
foreach ($pages as $page) {
    $slug = Slug::where('reference_id', $page->id)->where('reference_type', Page::class)->first();
    echo "ID:{$page->id} Name:{$page->name} Slug:" . ($slug ? $slug->key : 'NO SLUG') . "\n";
}
