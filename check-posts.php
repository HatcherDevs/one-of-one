<?php
require __DIR__ . '/vendor/autoload.php';
$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Blog\Models\Post;
use Botble\Language\Models\LanguageMeta;

echo "=== All Posts ===\n";
$posts = Post::with('languageMeta')->get();
foreach ($posts as $p) {
    $meta = $p->languageMeta;
    echo "ID: {$p->id} | Name: {$p->name} | Status: {$p->status} | Lang: " . ($meta->lang_meta_code ?? 'N/A') . "\n";
}

echo "\n=== LanguageMeta for Posts ===\n";
$metas = LanguageMeta::where('reference_type', 'Botble\Blog\Models\Post')->get();
foreach ($metas as $m) {
    echo "Meta ID: {$m->lang_meta_id} | Code: {$m->lang_meta_code} | RefID: {$m->reference_id}\n";
}
