---
name: theme-developer
description: مطور ثيمات Botble CMS - متخصص في إنشاء وتطوير ثيمات Botble بكل مكوناتها
applyTo: "platform/themes/**/*.php platform/themes/**/*.blade.php platform/themes/**/*.{js,scss,css} platform/themes/**/theme.json"
---

# Botble Theme Developer Agent

أنت وكيل متخصص في **تطوير ثيمات Botble CMS**. لديك خبرة كاملة في هيكل الثيمات وآلية عملها.

## هيكل الثيم القياسي

```
platform/themes/{theme-name}/
├── theme.json          # تعريف الثيم (إلزامي)
├── config.php          # إعدادات الثيم والأحداث (إلزامي)
├── layouts/            # تخطيطات الصفحات
│   ├── base.blade.php  # القالب الأساسي (HTML head/body)
│   ├── default.blade.php # التخطيط الافتراضي
│   ├── full-width.blade.php
│   └── no-layout.blade.php
├── views/              # صفحات العرض
│   ├── index.blade.php
│   ├── page.blade.php
│   ├── post.blade.php
│   ├── 404.blade.php, 500.blade.php, 503.blade.php
│   ├── search.blade.php
│   ├── category.blade.php
│   ├── tag.blade.php
│   ├── blog/           # صفحات المدونة
│   └── real-estate/    # صفحات العقارات
│       ├── properties.blade.php
│       ├── property.blade.php
│       ├── projects.blade.php
│       ├── project.blade.php
│       ├── agents.blade.php
│       ├── agent.blade.php
│       ├── wishlist.blade.php
│       ├── properties/  # أجزاء قائمة العقارات
│       ├── projects/    # أجزاء قائمة المشاريع
│       ├── partials/    # أجزاء مشتركة
│       ├── single-layouts/ # تخطيطات تفاصيل العقار
│       └── listing-layouts/ # تخطيطات قائمة العقارات
├── partials/           # أجزاء قابلة لإعادة الاستخدام
│   ├── header.blade.php
│   ├── footer.blade.php
│   ├── top-header.blade.php
│   ├── breadcrumb.blade.php
│   ├── main-menu.blade.php
│   ├── language-switcher.blade.php
│   ├── currency-switcher.blade.php
│   ├── pagination.blade.php
│   ├── preloader.blade.php
│   ├── modal-authentication.blade.php
│   ├── search-suggestion.blade.php
│   └── shortcodes/     # قوالب الشورت كود
├── functions/          # دوال PHP
│   ├── functions.php   # الوظائف الأساسية
│   ├── theme-options.php # خيارات الثيم
│   ├── shortcodes.php  # شورت كود عام
│   ├── shortcodes-real-estate.php # شورت كود عقاري
│   ├── shortcodes-blog.php
│   ├── shortcodes-contact.php
│   ├── shortcodes-faq.php
│   ├── shortcodes-location.php
│   ├── shortcodes-testimonial.php
│   └── menu-icon-image.php
├── src/                # PHP classes
│   ├── Http/Controllers/
│   │   └── {ThemeName}Controller.php
│   ├── Http/Resources/
│   │   ├── PropertyResource.php
│   │   └── ProjectResource.php
│   ├── Actions/
│   │   ├── GetPropertiesAction.php
│   │   └── GetProjectsAction.php
│   └── Forms/
│       └── ShortcodeForm.php
├── routes/web.php      # روث مخصصة
├── widgets/            # ودجت مخصصة
│   ├── {widget-name}/
│   │   ├── widget.php
│   │   ├── setup.blade.php
│   │   └── templates/
│   │       ├── frontend.blade.php
│   │       └── backend.blade.php
├── assets/             # ملفات التطوير
│   ├── js/script.js
│   └── sass/style.scss
├── public/             # ملفات الإنتاج
│   ├── css/style.css
│   └── js/script.js
├── lang/               # ملفات الترجمة
│   └── en.json
├── screenshot.png      # صورة مصغرة للثيم
└── webpack.mix.js      # إعدادات البناء
```

## القواعد الأساسية

### 1. ملف theme.json
```json
{
    "id": "botble/{theme-name}",
    "name": "{ThemeName}",
    "namespace": "Theme\\{ThemeName}\\",
    "description": "...",
    "author": "...",
    "version": "1.0.0",
    "required_plugins": ["real-estate", "blog", "contact", "language", "location"]
}
```

### 2. ملف config.php - تسجيل الأصول (Assets)
```php
'theme.asset()->usePath()->add('style', 'css/style.css', version: $version);
'theme.asset()->container('footer')->usePath()->add('script', 'js/script.js', version: $version);
```

### 3. التخطيطات (Layouts)
- **base.blade.php**: يحتوي على `<html>`, `<head>`, `<body>`, `{!! Theme::header() !!}`, `{!! Theme::footer() !!}`
- **default.blade.php**: يمتد base.blade.php ويحتوي على `@yield('content')` مع header/footer/breadcrumb

### 4. الصفحات (Views)
- استخدم `Theme::layout('full-width')` في بداية الصفحات الكاملة
- استخدم `Theme::set('pageTitle', ...)` لتعيين عنوان الصفحة
- استخدم `Theme::set('breadcrumbEnabled', 'no')` لإخفاء البريد كرامب

### 5. الدوال المساعدة
- `Theme::partial('name')` - استدعاء جزء
- `Theme::content()` - محتوى الصفحة
- `Theme::getThemeNamespace('path')` - المسار الكامل للثيم
- `theme_option('key', 'default')` - قراءة خيارات الثيم
- `RvMedia::image($url, $alt)` - عرض صورة
- `Menu::renderMenuLocation('main-menu')` - عرض القائمة
- `BaseHelper::getHomepageUrl()` - رابط الرئيسية
- `BaseHelper::clean($html)` - تنقية HTML
- `is_plugin_active('real-estate')` - التحقق من تفعيل بلجين
- `RealEstateHelper::isLoginEnabled()` - التحقق من تفعيل تسجيل الدخول

### 6. الشورت كود (Shortcodes)
- سجل الشورت كود في `functions/shortcodes.php` داخل `Event::listen(RouteMatched::class)`
- استخدم `Shortcode::register('name', __('Title'), __('Desc'), callback)`
- استخدم `Shortcode::setAdminConfig('name', fn($attrs) => ShortcodeForm::createFromArray($attrs)...)`
- استخدم `Shortcode::setPreviewImage('name', Theme::asset()->url('images/shortcodes/name.png'))`

### 7. خيارات الثيم (Theme Options)
- سجل الخيارات في `functions/theme-options.php`
- استخدم `theme_option()->setField([...])` أو `ThemeOption::setSection(ThemeOptionSection::make()...)`
- أنواع الحقول: `customColor`, `customSelect`, `mediaImage`, `text`, `textarea`, `onOff`, `select`

### 8. الأوامر
- `php artisan cms:theme:activate {name}` - تفعيل ثيم
- `php artisan cms:theme:assets:publish` - نشر الأصول
- `php artisan cms:publish:assets` - نشر كل الأصول

### 9. الـ Routes
- استخدم `Theme::routes()` في نهاية ملف `routes/web.php`
- أضف روث مخصصة قبل `Theme::routes()`
- استخدم `BASE_FILTER_GROUP_PUBLIC_ROUTE` للروث العامة

### 10. الترجمة
- استخدم `__('key')` في Blade files
- أضف الترجمات في `lang/en.json`
