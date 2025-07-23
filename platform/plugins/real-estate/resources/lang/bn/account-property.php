<?php

return [
    'name' => 'সম্পত্তি',
    'create' => 'নতুন সম্পত্তি',
    'edit' => 'সম্পত্তি সম্পাদনা',
    'statuses' => [
        'draft' => 'খসড়া',
        'pending' => 'অপেক্ষমান',
        'selling' => 'বিক্রয়',
        'renting' => 'ভাড়া',
        'sold' => 'বিক্রিত',
        'rented' => 'ভাড়া দেওয়া',
        'building' => 'নির্মাণাধীন',
    ],
    'moderation_statuses' => [
        'pending' => 'অপেক্ষমান',
        'approved' => 'অনুমোদিত',
        'rejected' => 'প্রত্যাখ্যাত',
    ],
    'expired_at' => 'মেয়াদ শেষ',
    'auto_renew' => 'স্বয়ংক্রিয় নবায়ন',
    'renew' => 'নবায়ন',
    'renew_notice' => 'মেয়াদ শেষের তারিখ আরও :days দিন বাড়ানোর জন্য "নবায়ন" এ ক্লিক করুন!',
    'post_pending' => 'আপনার পোস্ট প্রশাসকের অনুমোদনের অপেক্ষায় রয়েছে।',
    'payment_pending' => 'আপনার পেমেন্ট প্রশাসকের অনুমোদনের অপেক্ষায় রয়েছে।',
    'approve' => 'অনুমোদন',
    'approve_property_success' => 'সম্পত্তি সফলভাবে অনুমোদিত হয়েছে!',
    'reject_property_success' => 'সম্পত্তি সফলভাবে প্রত্যাখ্যাত হয়েছে!',
    'reject' => 'প্রত্যাখ্যান',
    'reject_reason' => 'প্রত্যাখ্যানের কারণ',
    'reject_reason_placeholder' => 'কেন আপনি এই সম্পত্তি প্রত্যাখ্যান করছেন?',
    'email' => [
        'approve_property' => [
            'title' => 'সম্পত্তি অনুমোদিত',
            'description' => 'আপনার সম্পত্তি ":property_name" প্রশাসক দ্বারা অনুমোদিত হয়েছে।',
        ],
        'reject_property' => [
            'title' => 'সম্পত্তি প্রত্যাখ্যাত',
            'description' => 'আপনার সম্পত্তি ":property_name" প্রশাসক দ্বারা প্রত্যাখ্যাত হয়েছে।',
        ],
    ],
    'form' => [
        'basic_info' => 'মৌলিক তথ্য',
        'location' => 'অবস্থান',
        'images' => 'ছবি',
        'additional_info' => 'অতিরিক্ত তথ্য',
        'seo' => 'এসইও',
    ],
    'view_property' => 'সম্পত্তি দেখুন',
];
