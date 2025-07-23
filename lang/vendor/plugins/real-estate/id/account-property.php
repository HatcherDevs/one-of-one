<?php

return [
    'name' => 'Properti',
    'create' => 'Properti baru',
    'edit' => 'Edit properti',
    'statuses' => [
        'draft' => 'Draft',
        'pending' => 'Menunggu',
        'selling' => 'Dijual',
        'renting' => 'Disewa',
        'sold' => 'Terjual',
        'rented' => 'Tersewa',
        'building' => 'Pembangunan',
    ],
    'moderation_statuses' => [
        'pending' => 'Menunggu',
        'approved' => 'Disetujui',
        'rejected' => 'Ditolak',
    ],
    'expired_at' => 'Kedaluwarsa pada',
    'auto_renew' => 'Perpanjang otomatis',
    'renew' => 'Perpanjang',
    'renew_notice' => 'Klik "Perpanjang" untuk memperpanjang tanggal kedaluwarsa selama :days hari lagi!',
    'post_pending' => 'Posting Anda menunggu persetujuan dari admin.',
    'payment_pending' => 'Pembayaran Anda menunggu persetujuan dari admin.',
    'approve' => 'Setujui',
    'approve_property_success' => 'Properti berhasil disetujui!',
    'reject_property_success' => 'Properti berhasil ditolak!',
    'reject' => 'Tolak',
    'reject_reason' => 'Alasan penolakan',
    'reject_reason_placeholder' => 'Mengapa Anda menolak properti ini?',
    'email' => [
        'approve_property' => [
            'title' => 'Properti Disetujui',
            'description' => 'Properti Anda ":property_name" telah disetujui oleh admin.',
        ],
        'reject_property' => [
            'title' => 'Properti Ditolak',
            'description' => 'Properti Anda ":property_name" telah ditolak oleh admin.',
        ],
    ],
    'form' => [
        'basic_info' => 'Informasi dasar',
        'location' => 'Lokasi',
        'images' => 'Gambar',
        'additional_info' => 'Informasi tambahan',
        'seo' => 'SEO',
    ],
    'view_property' => 'Lihat properti',
];
