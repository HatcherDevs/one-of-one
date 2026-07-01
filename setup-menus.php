<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Menu\Models\Menu;
use Botble\Menu\Models\MenuNode;
use Botble\Menu\Models\MenuLocation;
use Botble\Language\Models\LanguageMeta;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Support\Facades\DB;

// 1. Delete ALL existing menus and their metas
$menus = Menu::all();
foreach ($menus as $menu) {
    $nodeIds = MenuNode::where('menu_id', $menu->id)->pluck('id')->toArray();
    LanguageMeta::whereIn('reference_id', $nodeIds)->where('reference_type', MenuNode::class)->delete();
    LanguageMeta::where('reference_id', $menu->id)->where('reference_type', Menu::class)->delete();
    MenuNode::where('menu_id', $menu->id)->delete();
    MenuLocation::where('menu_id', $menu->id)->delete();
    $menu->delete();
}
echo "Deleted all existing menus\n";

// 2. Create Sidebar Menu (English version)
$sidebarMenu = Menu::create([
    'name' => 'Sidebar Menu',
    'slug' => 'sidebar-menu',
    'status' => BaseStatusEnum::PUBLISHED,
]);

// Add English items
$enItems = [
    ['title' => 'Projects', 'url' => '/projects', 'position' => 0],
    ['title' => 'Press', 'url' => '/news-and-press', 'position' => 1],
    ['title' => 'Contact Us', 'url' => '/contact-us', 'position' => 2],
];

$enCode = DB::table('languages')->where('lang_is_default', 1)->first()->lang_code;
$arCode = DB::table('languages')->where('lang_locale', 'ar')->first()->lang_code;

// Create language meta for the menu (English)
$sidebarOrigin = md5('sidebar-menu-' . time());
LanguageMeta::create([
    'lang_meta_code' => $enCode,
    'lang_meta_origin' => $sidebarOrigin,
    'reference_id' => $sidebarMenu->id,
    'reference_type' => Menu::class,
]);

// Add English menu nodes with language meta
foreach ($enItems as $item) {
    $node = MenuNode::create([
        'menu_id' => $sidebarMenu->id,
        'parent_id' => 0,
        'url' => $item['url'],
        'title' => $item['title'],
        'position' => $item['position'],
        'has_child' => false,
    ]);
    
    $nodeOrigin = md5('node-' . $node->id . '-' . time());
    LanguageMeta::create([
        'lang_meta_code' => $enCode,
        'lang_meta_origin' => $nodeOrigin,
        'reference_id' => $node->id,
        'reference_type' => MenuNode::class,
    ]);
    echo "Added EN node: {$item['title']}\n";
}

// Link to sidebar-menu location
MenuLocation::create([
    'menu_id' => $sidebarMenu->id,
    'location' => 'sidebar-menu',
]);

// 3. Create Footer Menu (English version)
$footerMenu = Menu::create([
    'name' => 'Footer Menu',
    'slug' => 'footer-menu',
    'status' => BaseStatusEnum::PUBLISHED,
]);

$footerOrigin = md5('footer-menu-' . time());
LanguageMeta::create([
    'lang_meta_code' => $enCode,
    'lang_meta_origin' => $footerOrigin,
    'reference_id' => $footerMenu->id,
    'reference_type' => Menu::class,
]);

$footerNode = MenuNode::create([
    'menu_id' => $footerMenu->id,
    'parent_id' => 0,
    'url' => '/contact-us',
    'title' => 'Contact Us',
    'position' => 0,
    'has_child' => false,
]);

$footerNodeOrigin = md5('footer-node-' . $footerNode->id . '-' . time());
LanguageMeta::create([
    'lang_meta_code' => $enCode,
    'lang_meta_origin' => $footerNodeOrigin,
    'reference_id' => $footerNode->id,
    'reference_type' => MenuNode::class,
]);

MenuLocation::create([
    'menu_id' => $footerMenu->id,
    'location' => 'footer-menu',
]);
echo "Created Footer Menu\n";

// 4. Now create Arabic translations using Botble's translation system
// For Sidebar Menu - create Arabic version linked to English
$arSidebarMenu = Menu::create([
    'name' => 'القائمة الجانبية',
    'slug' => 'sidebar-menu-ar',
    'status' => BaseStatusEnum::PUBLISHED,
]);

// Link Arabic menu to English menu via language meta (same origin)
LanguageMeta::create([
    'lang_meta_code' => $arCode,
    'lang_meta_origin' => $sidebarOrigin,
    'reference_id' => $arSidebarMenu->id,
    'reference_type' => Menu::class,
]);

// Add Arabic items to the Arabic menu
$arItems = [
    ['title' => 'المشاريع', 'url' => '/projects', 'position' => 0],
    ['title' => 'الأخبار والصحافة', 'url' => '/news-and-press', 'position' => 1],
    ['title' => 'اتصل بنا', 'url' => '/contact-us', 'position' => 2],
];

// Get English nodes to link origins
$enNodes = MenuNode::where('menu_id', $sidebarMenu->id)->orderBy('position')->get();

foreach ($arItems as $index => $item) {
    $enNode = $enNodes->get($index);
    $enNodeMeta = LanguageMeta::where('reference_id', $enNode->id)
        ->where('reference_type', MenuNode::class)
        ->first();
    
    $arNode = MenuNode::create([
        'menu_id' => $arSidebarMenu->id,
        'parent_id' => 0,
        'url' => $item['url'],
        'title' => $item['title'],
        'position' => $item['position'],
        'has_child' => false,
    ]);
    
    // Link Arabic node to English node via same origin
    LanguageMeta::create([
        'lang_meta_code' => $arCode,
        'lang_meta_origin' => $enNodeMeta->lang_meta_origin,
        'reference_id' => $arNode->id,
        'reference_type' => MenuNode::class,
    ]);
    echo "Added AR node: {$item['title']}\n";
}

// Link Arabic sidebar menu to sidebar-menu location
MenuLocation::create([
    'menu_id' => $arSidebarMenu->id,
    'location' => 'sidebar-menu',
]);

// 5. Create Arabic Footer Menu
$arFooterMenu = Menu::create([
    'name' => 'قائمة الفوتر',
    'slug' => 'footer-menu-ar',
    'status' => BaseStatusEnum::PUBLISHED,
]);

LanguageMeta::create([
    'lang_meta_code' => $arCode,
    'lang_meta_origin' => $footerOrigin,
    'reference_id' => $arFooterMenu->id,
    'reference_type' => Menu::class,
]);

$arFooterNode = MenuNode::create([
    'menu_id' => $arFooterMenu->id,
    'parent_id' => 0,
    'url' => '/contact-us',
    'title' => 'اتصل بنا',
    'position' => 0,
    'has_child' => false,
]);

$enFooterNodeMeta = LanguageMeta::where('reference_id', $footerNode->id)
    ->where('reference_type', MenuNode::class)
    ->first();

LanguageMeta::create([
    'lang_meta_code' => $arCode,
    'lang_meta_origin' => $enFooterNodeMeta->lang_meta_origin,
    'reference_id' => $arFooterNode->id,
    'reference_type' => MenuNode::class,
]);

MenuLocation::create([
    'menu_id' => $arFooterMenu->id,
    'location' => 'footer-menu',
]);
echo "Created Arabic Footer Menu\n";

echo "\n=== Done! ===\n";
echo "Sidebar Menu (EN): {$sidebarMenu->id}\n";
echo "Sidebar Menu (AR): {$arSidebarMenu->id}\n";
echo "Footer Menu (EN): {$footerMenu->id}\n";
echo "Footer Menu (AR): {$arFooterMenu->id}\n";
