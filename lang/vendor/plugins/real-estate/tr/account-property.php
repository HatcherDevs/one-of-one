<?php

return [
    'name' => 'Mülkler',
    'create' => 'Yeni mülk',
    'edit' => 'Mülkü düzenle',
    'statuses' => [
        'draft' => 'Taslak',
        'pending' => 'Beklemede',
        'selling' => 'Satılık',
        'renting' => 'Kiralık',
        'sold' => 'Satıldı',
        'rented' => 'Kiralandı',
        'building' => 'İnşaat halinde',
    ],
    'moderation_statuses' => [
        'pending' => 'Beklemede',
        'approved' => 'Onaylandı',
        'rejected' => 'Reddedildi',
    ],
    'expired_at' => 'Süresi bitiyor',
    'auto_renew' => 'Otomatik yenileme',
    'renew' => 'Yenile',
    'renew_notice' => 'Son kullanma tarihini :days gün daha uzatmak için "Yenile"ye tıklayın!',
    'post_pending' => 'Gönderiniz yöneticinin onayını bekliyor.',
    'payment_pending' => 'Ödemeniz yöneticinin onayını bekliyor.',
    'approve' => 'Onayla',
    'approve_property_success' => 'Mülk başarıyla onaylandı!',
    'reject_property_success' => 'Mülk başarıyla reddedildi!',
    'reject' => 'Reddet',
    'reject_reason' => 'Reddetme nedeni',
    'reject_reason_placeholder' => 'Bu mülkü neden reddediyorsunuz?',
    'email' => [
        'approve_property' => [
            'title' => 'Mülk Onaylandı',
            'description' => '":property_name" mülkünüz yönetici tarafından onaylandı.',
        ],
        'reject_property' => [
            'title' => 'Mülk Reddedildi',
            'description' => '":property_name" mülkünüz yönetici tarafından reddedildi.',
        ],
    ],
    'form' => [
        'basic_info' => 'Temel bilgiler',
        'location' => 'Konum',
        'images' => 'Resimler',
        'additional_info' => 'Ek bilgiler',
        'seo' => 'SEO',
    ],
    'view_property' => 'Mülkü görüntüle',
];
