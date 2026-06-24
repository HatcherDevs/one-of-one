أنت مطور ثيمات Botble CMS. قم بإنشاء صفحة {page_name} كاملة لثيم {theme_name}.

## المتطلبات
- استخدم التخطيط المناسب (default, full-width, no-layout)
- أضف عنوان الصفحة باستخدام `Theme::set('pageTitle', ...)`
- استخدم الأجزاء (partials) الموجودة
- استخدم الدوال المساعدة المناسبة

## الهيكل المطلوب
```blade
@php
    Theme::layout('{layout}');
    Theme::set('pageTitle', __('{Page Title}'));
@endphp

{{-- المحتوى --}}
```

## ملاحظات
- استخدم `__('key')` لكل النصوص
- استخدم `Theme::partial('name')` للأجزاء
- استخدم `RvMedia::image()` للصور
- استخدم `BaseHelper::clean()` للنصوص الديناميكية
