<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;
use Botble\Language\Models\LanguageMeta;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Support\Facades\DB;

$arCode = DB::table('languages')->where('lang_locale', 'ar')->first()->lang_code;
$enCode = DB::table('languages')->where('lang_is_default', 1)->first()->lang_code;

// 1. Contact Us page (ID: 7)
$contactPage = Page::find(7);
if (!$contactPage) {
    echo "Contact page not found!\n";
    exit;
}

// Get or create language meta for English
$enMeta = LanguageMeta::where('reference_id', $contactPage->id)
    ->where('reference_type', Page::class)
    ->first();

if (!$enMeta) {
    $origin = md5('page-contact-' . time());
    LanguageMeta::create([
        'lang_meta_code' => $enCode,
        'lang_meta_origin' => $origin,
        'reference_id' => $contactPage->id,
        'reference_type' => Page::class,
    ]);
} else {
    $origin = $enMeta->lang_meta_origin;
}

// Check if Arabic translation already exists
$arMeta = LanguageMeta::where('reference_type', Page::class)
    ->where('lang_meta_code', $arCode)
    ->where('lang_meta_origin', $origin)
    ->first();

if ($arMeta) {
    echo "Arabic translation already exists for Contact Us (ID: {$arMeta->reference_id})\n";
    $arPage = Page::find($arMeta->reference_id);
} else {
    // Create Arabic version of Contact Us page
    $arContactPage = Page::create([
        'name' => 'تواصل معنا',
        'content' => '
[contact-page-title title="تواصل معنا"][/contact-page-title]

[contact-info-form heading="هل لديك استفسار؟ تواصل معنا" description="لمعرفة المزيد عن خدماتنا، يمكنك التواصل مع أحد ممثلينا عبر:" email="marketing@oneofone.com.eg" phone="17444" intro_text="كما يمكنك ملء البيانات أدناه، وسنقوم بالرد عليك في أقرب وقت ممكن" background_color="#EAE4DE"]
[/contact-info-form]

[find-us-section heading="العنوان" address="Park St. East, B3, Office 3006" map_url="https://maps.google.com"]
[/find-us-section]
',
        'status' => BaseStatusEnum::PUBLISHED,
        'user_id' => 1,
    ]);

    // Create Arabic language meta
    LanguageMeta::create([
        'lang_meta_code' => $arCode,
        'lang_meta_origin' => $origin,
        'reference_id' => $arContactPage->id,
        'reference_type' => Page::class,
    ]);

    echo "Created Arabic Contact Us page (ID: {$arContactPage->id})\n";
}

// 2. Homepage (find it)
$homepage = Page::where('name', 'Homepage')->orWhere('name', 'Home')->first();
if (!$homepage) {
    // Try to find by slug
    $homepage = Page::whereHas('slugable', function($q) {
        $q->where('key', 'home');
    })->first();
}

if (!$homepage) {
    echo "Homepage not found! Checking all pages...\n";
    Page::all(['id', 'name'])->each(function($p) {
        echo "  - ID:{$p->id} Name:{$p->name}\n";
    });
} else {
    echo "Homepage found: ID:{$homepage->id} Name:{$homepage->name}\n";
    
    // Get or create language meta for English
    $enMetaHome = LanguageMeta::where('reference_id', $homepage->id)
        ->where('reference_type', Page::class)
        ->first();

    if (!$enMetaHome) {
        $homeOrigin = md5('page-home-' . time());
        LanguageMeta::create([
            'lang_meta_code' => $enCode,
            'lang_meta_origin' => $homeOrigin,
            'reference_id' => $homepage->id,
            'reference_type' => Page::class,
        ]);
    } else {
        $homeOrigin = $enMetaHome->lang_meta_origin;
    }

    // Check if Arabic translation already exists
    $arMetaHome = LanguageMeta::where('reference_type', Page::class)
        ->where('lang_meta_code', $arCode)
        ->where('lang_meta_origin', $homeOrigin)
        ->first();

    if ($arMetaHome) {
        echo "Arabic translation already exists for Homepage (ID: {$arMetaHome->reference_id})\n";
    } else {
        // Create Arabic version of Homepage
        $arHomepage = Page::create([
            'name' => 'الرئيسية',
            'content' => $homepage->content, // Copy English content, will be translated via shortcodes
            'status' => BaseStatusEnum::PUBLISHED,
            'user_id' => 1,
        ]);

        // Create Arabic language meta
        LanguageMeta::create([
            'lang_meta_code' => $arCode,
            'lang_meta_origin' => $homeOrigin,
            'reference_id' => $arHomepage->id,
            'reference_type' => Page::class,
        ]);

        echo "Created Arabic Homepage (ID: {$arHomepage->id})\n";
    }
}

echo "\nDone!\n";
