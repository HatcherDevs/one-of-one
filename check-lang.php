<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Botble\Menu\Models\Menu;

echo "Supported models:\n";
foreach (config('plugins.language.general.supported', []) as $model) {
    echo " - $model\n";
}

echo "\nLanguages:\n";
$languages = Botble\Language\Models\Language::all();
foreach ($languages as $lang) {
    echo " - {$lang->lang_name} ({$lang->lang_locale}) - Default: {$lang->lang_is_default}\n";
}

echo "\nCurrent locale: " . Botble\Language\Facades\Language::getCurrentLocale() . "\n";
echo "Current locale code: " . Botble\Language\Facades\Language::getCurrentLocaleCode() . "\n";
echo "Default locale: " . Botble\Language\Facades\Language::getDefaultLocale() . "\n";

// Check existing posts and their language
echo "\n=== Posts ===\n";
$posts = Post::with('languageMeta')->get();
foreach ($posts as $post) {
    $langCode = $post->languageMeta ? $post->languageMeta->lang_meta_code : 'NO LANG';
    echo "ID: {$post->id} - {$post->name} - Lang: {$langCode}\n";
}

// Check existing menus
echo "\n=== Menus ===\n";
$menus = Menu::with('languageMeta')->get();
foreach ($menus as $menu) {
    $langCode = $menu->languageMeta ? $menu->languageMeta->lang_meta_code : 'NO LANG';
    echo "ID: {$menu->id} - {$menu->name} - Lang: {$langCode}\n";
}

echo "\nDone!\n";
