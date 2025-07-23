<?php

return [
    'name' => 'العقارات',
    'create' => 'عقار جديد',
    'edit' => 'تعديل العقار',
    'statuses' => [
        'draft' => 'مسودة',
        'pending' => 'في الانتظار',
        'selling' => 'للبيع',
        'renting' => 'للإيجار',
        'sold' => 'مباع',
        'rented' => 'مؤجر',
        'building' => 'قيد البناء',
    ],
    'moderation_statuses' => [
        'pending' => 'في الانتظار',
        'approved' => 'موافق عليه',
        'rejected' => 'مرفوض',
    ],
    'expired_at' => 'منتهي الصلاحية في',
    'auto_renew' => 'تجديد تلقائي',
    'renew' => 'تجديد',
    'renew_notice' => 'انقر على "تجديد" لتمديد تاريخ انتهاء الصلاحية لمدة :days يوماً أخرى!',
    'post_pending' => 'منشورك في انتظار الموافقة من المدير.',
    'payment_pending' => 'دفعتك في انتظار الموافقة من المدير.',
    'approve' => 'موافقة',
    'approve_property_success' => 'تمت الموافقة على العقار بنجاح!',
    'reject_property_success' => 'تم رفض العقار بنجاح!',
    'reject' => 'رفض',
    'reject_reason' => 'سبب الرفض',
    'reject_reason_placeholder' => 'لماذا ترفض هذا العقار؟',
    'email' => [
        'approve_property' => [
            'title' => 'تمت الموافقة على العقار',
            'description' => 'تمت الموافقة على عقارك ":property_name" من قبل المدير.',
        ],
        'reject_property' => [
            'title' => 'تم رفض العقار',
            'description' => 'تم رفض عقارك ":property_name" من قبل المدير.',
        ],
    ],
    'form' => [
        'basic_info' => 'المعلومات الأساسية',
        'location' => 'الموقع',
        'images' => 'الصور',
        'additional_info' => 'معلومات إضافية',
        'seo' => 'تحسين محركات البحث',
    ],
    'view_property' => 'عرض العقار',
];
