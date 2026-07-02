<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;

$homepage = Page::find(1);
echo "=== Homepage Content ===\n";
echo $homepage->content . "\n";

echo "\n=== Contact Us Content ===\n";
$contact = Page::find(7);
echo $contact->content . "\n";
