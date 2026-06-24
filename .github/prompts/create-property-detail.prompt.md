أنت مطور Botble CMS. قم بإنشاء صفحة تفاصيل عقار (Property Detail) كاملة لثيم {theme_name}.

## المطلوب
أنشئ صفحة `views/real-estate/property.blade.php` مع:
1. تخطيط full-width
2. دعم 4 أنماط مختلفة للتخطيط
3. معرض صور
4. تفاصيل العقار
5. خريطة الموقع
6. التقييمات
7. عقارات مشابهة

## النمط القياسي
```blade
@php
    Theme::layout('full-width');
    Theme::set('breadcrumbEnabled', 'no');

    // تسجيل الأصول المطلوبة
    Theme::asset()->usePath()->add('fancybox', 'plugins/fancybox/jquery.fancybox.min.css');
    Theme::asset()->container('footer')->usePath()->add('fancybox', 'plugins/fancybox/jquery.fancybox.min.js');
    Theme::asset()->usePath()->add('leaflet', 'plugins/leaflet/leaflet.css');
    Theme::asset()->container('footer')->usePath()->add('leaflet', 'plugins/leaflet/leaflet.js');

    $style = theme_option('real_estate_property_detail_layout', 1);
    $style = in_array($style, range(1, 4)) ? $style : 1;
    Theme::set('pageTitle', $property->name);
@endphp

@include(Theme::getThemeNamespace("views.real-estate.single-layouts.style-$style"))
```

## العناصر المطلوبة في صفحة التفاصيل
1. **معرض الصور** - باستخدام Fancybox
2. **معلومات العقار** - السعر، المساحة، عدد الغرف، الحمامات، الأدوار
3. **الوصف** - وصف العقار
4. **المميزات** - Features
5. **المرافق** - Facilities (مع المسافات)
6. **الموقع** - Location + خريطة Leaflet
7. **خطط الطوابق** - Floor plans
8. **التقييمات** - Reviews
9. **عقارات مشابهة** - Related properties
10. **الوسيط** - Agent info
