---
name: create-botble-theme
description: Skill لإنشاء ثيم Botble CMS كامل من الصفر بكل مكوناته
---

# Create Botble Theme Skill

هذه المهارة تمكنك من إنشاء ثيم Botble CMS كامل بكل مكوناته الأساسية.

## الخطوات

### 1. إنشاء هيكل المجلدات

```
platform/themes/{theme-name}/
├── assets/js/
├── assets/sass/
├── functions/
├── layouts/
├── partials/
│   └── shortcodes/
├── public/css/
├── public/js/
├── routes/
├── src/Http/Controllers/
├── views/
│   ├── blog/
│   └── real-estate/
├── lang/
└── widgets/
```

### 2. إنشاء ملفات إلزامية

- `theme.json` - تعريف الثيم
- `config.php` - إعدادات الثيم والأحداث
- `webpack.mix.js` - إعدادات البناء

### 3. إنشاء التخطيطات

- `layouts/base.blade.php` - القالب الأساسي
- `layouts/default.blade.php` - التخطيط الافتراضي
- `layouts/full-width.blade.php` - تخطيط كامل العرض
- `layouts/no-layout.blade.php` - بدون تخطيط

### 4. إنشاء الأجزاء

- `partials/header.blade.php`
- `partials/footer.blade.php`
- `partials/top-header.blade.php`
- `partials/breadcrumb.blade.php`
- `partials/main-menu.blade.php`
- `partials/language-switcher.blade.php`
- `partials/currency-switcher.blade.php`
- `partials/pagination.blade.php`
- `partials/preloader.blade.php`

### 5. إنشاء الدوال

- `functions/functions.php` - الوظائف الأساسية
- `functions/theme-options.php` - خيارات الثيم
- `functions/shortcodes.php` - الشورت كود

### 6. إنشاء الصفحات

- `views/index.blade.php` - الرئيسية
- `views/page.blade.php` - الصفحات
- `views/post.blade.php` - المقالات
- `views/404.blade.php`, `500.blade.php`, `503.blade.php`

### 7. نشر الأصول

```bash
php artisan cms:theme:assets:publish
php artisan cms:publish:assets
```

### 8. تفعيل الثيم

```bash
php artisan cms:theme:activate {theme-name}
```
