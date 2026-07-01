<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Menu\Models\Menu;
use Botble\Menu\Models\MenuNode;
use Botble\Language\Models\LanguageMeta;

echo "=== Menu Language Metas ===\n";
$metas = LanguageMeta::where('reference_type', Menu::class)->get();
foreach ($metas as $m) {
    $menu = Menu::find($m->reference_id);
    echo "Menu: {$menu->name} | Code: {$m->lang_meta_code} | Origin: {$m->lang_meta_origin}\n";
}

echo "\n=== Menu Nodes Language Metas ===\n";
$nodeMetas = LanguageMeta::where('reference_type', MenuNode::class)->get();
foreach ($nodeMetas as $m) {
    $node = MenuNode::find($m->reference_id);
    if ($node) {
        echo "Node: {$node->title} | Code: {$m->lang_meta_code} | Origin: {$m->lang_meta_origin}\n";
    }
}

echo "\n=== All Menus ===\n";
$menus = Menu::all();
foreach ($menus as $menu) {
    echo "ID: {$menu->id} | Name: {$menu->name} | Slug: {$menu->slug}\n";
    foreach ($menu->menuNodes as $node) {
        echo "  - {$node->title} ({$node->url})\n";
    }
}
