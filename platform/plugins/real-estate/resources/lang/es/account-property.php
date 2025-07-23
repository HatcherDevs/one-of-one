<?php

return [
    'name' => 'Propiedades',
    'create' => 'Nueva propiedad',
    'edit' => 'Editar propiedad',
    'statuses' => [
        'draft' => 'Borrador',
        'pending' => 'Pendiente',
        'selling' => 'En venta',
        'renting' => 'En alquiler',
        'sold' => 'Vendida',
        'rented' => 'Alquilada',
        'building' => 'En construcción',
    ],
    'moderation_statuses' => [
        'pending' => 'Pendiente',
        'approved' => 'Aprobada',
        'rejected' => 'Rechazada',
    ],
    'expired_at' => 'Expira en',
    'auto_renew' => 'Renovación automática',
    'renew' => 'Renovar',
    'renew_notice' => '¡Haz clic en "Renovar" para extender la fecha de expiración por :days días más!',
    'post_pending' => 'Tu publicación está pendiente de aprobación del administrador.',
    'payment_pending' => 'Tu pago está pendiente de aprobación del administrador.',
    'approve' => 'Aprobar',
    'approve_property_success' => '¡Propiedad aprobada exitosamente!',
    'reject_property_success' => '¡Propiedad rechazada exitosamente!',
    'reject' => 'Rechazar',
    'reject_reason' => 'Razón del rechazo',
    'reject_reason_placeholder' => '¿Por qué rechazas esta propiedad?',
    'email' => [
        'approve_property' => [
            'title' => 'Propiedad Aprobada',
            'description' => 'Tu propiedad ":property_name" ha sido aprobada por el administrador.',
        ],
        'reject_property' => [
            'title' => 'Propiedad Rechazada',
            'description' => 'Tu propiedad ":property_name" ha sido rechazada por el administrador.',
        ],
    ],
    'form' => [
        'basic_info' => 'Información básica',
        'location' => 'Ubicación',
        'images' => 'Imágenes',
        'additional_info' => 'Información adicional',
        'seo' => 'SEO',
    ],
    'view_property' => 'Ver propiedad',
];
