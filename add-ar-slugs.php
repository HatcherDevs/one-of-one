<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;
use Botble\Slug\Models\Slug;
use Botble\Language\Models\LanguageMeta;
use Illuminate\Support\Facades\DB;

// 1. Add slug for Arabic Contact Us (ID: 18)
$arContact = Page::find(18);
if ($arContact) {
    $existingSlug = Slug::where('reference_id', 18)->where('reference_type', Page::class)->first();
    if (!$existingSlug) {
        Slug::create([
            'key' => 'contact-us',
            'reference_id' => 18,
            'reference_type' => Page::class,
            'prefix' => 'ar',
        ]);
        echo "Added slug 'contact-us' for Arabic Contact Us (ID: 18)\n";
    }
}

// 2. Add slug for Arabic Homepage (ID: 19)
$arHome = Page::find(19);
if ($arHome) {
    $existingSlug = Slug::where('reference_id', 19)->where('reference_type', Page::class)->first();
    if (!$existingSlug) {
        Slug::create([
            'key' => 'home',
            'reference_id' => 19,
            'reference_type' => Page::class,
            'prefix' => 'ar',
        ]);
        echo "Added slug 'home' for Arabic Homepage (ID: 19)\n";
    }
}

// 3. Add slug for English Homepage (ID: 1)
$enHome = Page::find(1);
if ($enHome) {
    $existingSlug = Slug::where('reference_id', 1)->where('reference_type', Page::class)->first();
    if (!$existingSlug) {
        Slug::create([
            'key' => 'home',
            'reference_id' => 1,
            'reference_type' => Page::class,
            'prefix' => 'en',
        ]);
        echo "Added slug 'home' for English Homepage (ID: 1)\n";
    }
}

echo "\nDone!\n";
