<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

// Check the original config file
$originalConfig = require platform_path('plugins/language/config/general.php');
echo "Original config:\n";
echo json_encode($originalConfig['supported'], JSON_PRETTY_PRINT) . "\n";

// Check the published config
$publishedConfig = require config_path('plugins/language/general.php');
echo "\nPublished config:\n";
echo json_encode($publishedConfig['supported'], JSON_PRETTY_PRINT) . "\n";

// Check what config() returns
echo "\nconfig() returns:\n";
echo json_encode(config('plugins.language.general.supported'), JSON_PRETTY_PRINT) . "\n";

// Check if there's a cached config
$cachedConfig = base_path('bootstrap/cache/config.php');
if (file_exists($cachedConfig)) {
    echo "\nCached config exists!\n";
    $config = require $cachedConfig;
    if (isset($config['plugins']['language']['general']['supported'])) {
        echo "Cached supported:\n";
        echo json_encode($config['plugins']['language']['general']['supported'], JSON_PRETTY_PRINT) . "\n";
    }
} else {
    echo "\nNo cached config\n";
}
