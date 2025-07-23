<?php

return [
    'name' => 'Bất Động Sản',
    'create' => 'Bất động sản mới',
    'edit' => 'Chỉnh sửa bất động sản',
    'statuses' => [
        'draft' => 'Bản nháp',
        'pending' => 'Chờ duyệt',
        'selling' => 'Đang bán',
        'renting' => 'Cho thuê',
        'sold' => 'Đã bán',
        'rented' => 'Đã cho thuê',
        'building' => 'Đang xây dựng',
    ],
    'moderation_statuses' => [
        'pending' => 'Chờ duyệt',
        'approved' => 'Đã duyệt',
        'rejected' => 'Đã từ chối',
    ],
    'expired_at' => 'Hết hạn vào',
    'auto_renew' => 'Tự động gia hạn',
    'renew' => 'Gia hạn',
    'renew_notice' => 'Nhấp "Gia hạn" để gia hạn thêm :days ngày nữa!',
    'post_pending' => 'Bài đăng của bạn đang chờ quản trị viên phê duyệt.',
    'payment_pending' => 'Thanh toán của bạn đang chờ quản trị viên phê duyệt.',
    'approve' => 'Phê duyệt',
    'approve_property_success' => 'Phê duyệt bất động sản thành công!',
    'reject_property_success' => 'Từ chối bất động sản thành công!',
    'reject' => 'Từ chối',
    'reject_reason' => 'Lý do từ chối',
    'reject_reason_placeholder' => 'Tại sao bạn từ chối bất động sản này?',
    'email' => [
        'approve_property' => [
            'title' => 'Bất Động Sản Được Phê Duyệt',
            'description' => 'Bất động sản ":property_name" của bạn đã được quản trị viên phê duyệt.',
        ],
        'reject_property' => [
            'title' => 'Bất Động Sản Bị Từ Chối',
            'description' => 'Bất động sản ":property_name" của bạn đã bị quản trị viên từ chối.',
        ],
    ],
    'form' => [
        'basic_info' => 'Thông tin cơ bản',
        'location' => 'Vị trí',
        'images' => 'Hình ảnh',
        'additional_info' => 'Thông tin bổ sung',
        'seo' => 'SEO',
    ],
    'view_property' => 'Xem bất động sản',
];
