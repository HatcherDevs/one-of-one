<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Media\Models\MediaFile;
use Botble\Media\Facades\RvMedia;
use Illuminate\Support\Facades\DB;

$theme = setting('theme') ?: 'one-of-one';
$prefix = 'theme-' . $theme . '-';

$logos = [
    'logo_light' => base_path('platform/themes/one-of-one/public/images/logo.png'),
    'logo_dark' => base_path('platform/themes/one-of-one/public/images/logo-black.png'),
    'logo_footer' => base_path('platform/themes/one-of-one/public/images/logo-footer.png'),
];

foreach ($logos as $key => $fullPath) {
    if (!file_exists($fullPath)) {
        echo "File not found: $fullPath\n";
        continue;
    }

    try {
        $result = RvMedia::uploadFromPath($fullPath, 'theme/logos');
        
        if ($result && !$result instanceof \Botble\Media\Models\MediaFile) {
            $result = MediaFile::find($result);
        }
        
        if ($result) {
            $url = $result->url;
            $settingKey = $prefix . $key;
            DB::table('settings')->updateOrInsert(
                ['key' => $settingKey],
                ['value' => $url]
            );
            echo "Saved: {$settingKey} = {$url}\n";
        } else {
            echo "Failed to upload: $key\n";
        }
    } catch (\Exception $e) {
        echo "Error uploading $key: " . $e->getMessage() . "\n";
    }
}

\Illuminate\Support\Facades\Artisan::call('cache:clear');
echo "\nDone!\n";
