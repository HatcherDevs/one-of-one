<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Botble\Blog\Models\Category;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

echo "=== Posts Table Structure ===\n\n";

$columns = DB::select('DESCRIBE posts');

foreach ($columns as $column) {
    echo $column->Field . " - " . $column->Type . "\n";
}
