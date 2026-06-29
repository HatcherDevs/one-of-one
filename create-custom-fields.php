<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Contact\Models\CustomField;

$fields = [
    ['name' => 'Full name', 'type' => 'text', 'order' => 1, 'is_required' => true],
    ['name' => 'Phone number', 'type' => 'text', 'order' => 2, 'is_required' => true],
    ['name' => 'Email', 'type' => 'email', 'order' => 3, 'is_required' => true],
    ['name' => 'Message', 'type' => 'textarea', 'order' => 4, 'is_required' => true],
];

foreach ($fields as $field) {
    $customField = CustomField::create([
        'name' => $field['name'],
        'type' => $field['type'],
        'order' => $field['order'],
        'is_required' => $field['is_required'],
        'status' => 'published',
    ]);
    echo "Created custom field: " . $field['name'] . "\n";
}

echo "\n=== Custom Fields Created Successfully ===\n";
