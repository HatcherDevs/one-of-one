أنت مطور Botble CMS. قم بإنشاء صفحة عقارات (Properties Listing) كاملة لثيم {theme_name}.

## المطلوب
أنشئ صفحة `views/real-estate/properties.blade.php` مع:
1. تخطيط full-width
2. دعم تخطيطات متعددة (top-map, half-map, sidebar, without-map)
3. فلترة وبحث
4. عرض النتائج في Grid/List

## النمط القياسي
```blade
@php
    Theme::layout('full-width');
    Theme::set('pageTitle', __('Properties'));
@endphp

@include(Theme::getThemeNamespace('views.real-estate.partials.listing'), [
    'actionUrl' => RealEstateHelper::getPropertiesListPageUrl(),
    'ajaxUrl' => route('public.properties'),
    'mapUrl' => route('public.ajax.properties.map'),
    'itemLayout' => request()->input('layout', 'grid'),
    'layout' => theme_option('real_estate_property_listing_layout', 'top-map'),
    'perPages' => RealEstateHelper::getPropertiesPerPageList(),
    'filterViewPath' => Theme::getThemeNamespace('views.real-estate.partials.filters.property-search-box'),
    'itemsViewPath' => Theme::getThemeNamespace('views.real-estate.properties.index'),
])

@include(Theme::getThemeNamespace('views.real-estate.partials.property-map-content'))
```

## المكونات المطلوبة
1. `partials/listing.blade.php` - التخطيط الرئيسي للقائمة
2. `partials/filters/property-search-box.blade.php` - فلتر البحث
3. `properties/index.blade.php` - عرض العقارات (grid/list)
4. `partials/property-map-content.blade.php` - محتوى الخريطة
5. `partials/pagination.blade.php` - ترقيم الصفحات
