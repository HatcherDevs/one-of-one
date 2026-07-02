<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

echo "=== Config file content ===\n";
$configFile = config_path('plugins/language/general.php');
echo "Path: $configFile\n";
echo "Exists: " . (file_exists($configFile) ? 'YES' : 'NO') . "\n";
if (file_exists($configFile)) {
    $config = require $configFile;
    echo "Supported: " . json_encode($config['supported']) . "\n";
}

echo "\n=== From config() ===\n";
echo "Supported: " . json_encode(config('plugins.language.general.supported')) . "\n";

echo "\n=== From Language::supportedModels() ===\n";
echo "Supported: " . json_encode(\Botble\Language\Facades\Language::supportedModels()) . "\n";

echo "\n=== Page in supported? ===\n";
echo "Page: " . (\Botble\Page\Models\Page::class) . "\n";
echo "In config: " . (in_array(\Botble\Page\Models\Page::class, config('plugins.language.general.supported')) ? 'YES' : 'NO') . "\n";
echo "In supportedModels: " . (in_array(\Botble\Page\Models\Page::class, \Botble\Language\Facades\Language::supportedModels()) ? 'YES' : 'NO') . "\n";
