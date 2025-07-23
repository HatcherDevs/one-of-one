<?php

return [
    'name' => 'संपत्तियां',
    'create' => 'नई संपत्ति',
    'edit' => 'संपत्ति संपादित करें',
    'statuses' => [
        'draft' => 'मसौदा',
        'pending' => 'लंबित',
        'selling' => 'बिक्री',
        'renting' => 'किराया',
        'sold' => 'बेचा गया',
        'rented' => 'किराए पर दिया गया',
        'building' => 'निर्माणाधीन',
    ],
    'moderation_statuses' => [
        'pending' => 'लंबित',
        'approved' => 'अनुमोदित',
        'rejected' => 'अस्वीकृत',
    ],
    'expired_at' => 'समाप्ति तिथि',
    'auto_renew' => 'स्वचालित नवीनीकरण',
    'renew' => 'नवीनीकरण',
    'renew_notice' => 'समाप्ति तिथि को :days दिन और बढ़ाने के लिए "नवीनीकरण" पर क्लिक करें!',
    'post_pending' => 'आपकी पोस्ट प्रशासक की अनुमति की प्रतीक्षा में है।',
    'payment_pending' => 'आपका भुगतान प्रशासक की अनुमति की प्रतीक्षा में है।',
    'approve' => 'अनुमोदन',
    'approve_property_success' => 'संपत्ति सफलतापूर्वक अनुमोदित!',
    'reject_property_success' => 'संपत्ति सफलतापूर्वक अस्वीकृत!',
    'reject' => 'अस्वीकार',
    'reject_reason' => 'अस्वीकार का कारण',
    'reject_reason_placeholder' => 'आप इस संपत्ति को क्यों अस्वीकार कर रहे हैं?',
    'email' => [
        'approve_property' => [
            'title' => 'संपत्ति अनुमोदित',
            'description' => 'आपकी संपत्ति ":property_name" प्रशासक द्वारा अनुमोदित की गई है।',
        ],
        'reject_property' => [
            'title' => 'संपत्ति अस्वीकृत',
            'description' => 'आपकी संपत्ति ":property_name" प्रशासक द्वारा अस्वीकृत की गई है।',
        ],
    ],
    'form' => [
        'basic_info' => 'बुनियादी जानकारी',
        'location' => 'स्थान',
        'images' => 'छवियां',
        'additional_info' => 'अतिरिक्त जानकारी',
        'seo' => 'एसईओ',
    ],
    'view_property' => 'संपत्ति देखें',
];
