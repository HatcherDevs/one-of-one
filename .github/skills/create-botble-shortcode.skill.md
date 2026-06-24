---
name: create-botble-shortcode
description: Skill لإنشاء شورت كود Botble CMS متكامل مع القالب وإعدادات الأدمن
---

# Create Botble Shortcode Skill

هذه المهارة تمكنك من إنشاء شورت كود Botble CMS متكامل.

## الخطوات

### 1. تسجيل الشورت كود

في `functions/shortcodes.php` داخل `Event::listen(RouteMatched::class)`:

```php
Shortcode::register('{name}', __('{Title}'), __('{Description}'), function (ShortcodeCompiler $shortcode) {
    $data = []; // اجلب البيانات هنا
    return Theme::partial('shortcodes.{name}.index', compact('shortcode', 'data'));
});

Shortcode::setPreviewImage('{name}', Theme::asset()->url('images/shortcodes/{name}.png'));

Shortcode::setAdminConfig('{name}', function (array $attributes) {
    return ShortcodeForm::createFromArray($attributes)
        ->lazyLoading()
        ->addSectionHeadingFields()
        ->addBackgroundColorField()
        ->addLimitField()
        ->addSectionButtonAction();
});
```

### 2. إنشاء القالب

في `partials/shortcodes/{name}/index.blade.php`:

```blade
@if ($shortcode->title)
    <div class="section-heading">
        @if ($shortcode->subtitle)
            <span class="section-subtitle">{{ $shortcode->subtitle }}</span>
        @endif
        <h2 class="section-title">{{ $shortcode->title }}</h2>
    </div>
@endif

<div class="shortcode-content">
    {{-- محتوى الشورت كود --}}
</div>
```

### 3. إضافة صورة المعاينة

ضع صورة في `public/images/shortcodes/{name}.png` (يفضل 600x400px)

### 4. أنواع الحقول المتاحة

| الحقل       | الكلاس               | الاستخدام       |
| ----------- | -------------------- | --------------- |
| نص          | `TextField`          | نصوص قصيرة      |
| نص طويل     | `TextareaField`      | نصوص طويلة      |
| رقم         | `NumberField`        | أرقام           |
| اختيار      | `SelectField`        | اختيار من قائمة |
| تشغيل/إيقاف | `OnOffField`         | تفعيل/إلغاء     |
| صورة        | `MediaImageField`    | صور             |
| لون         | `ColorField`         | ألوان           |
| أيقونة      | `CoreIconField`      | أيقونات         |
| اختيار بصري | `UiSelectorField`    | اختيار بصور     |
| تبويبات     | `ShortcodeTabsField` | بيانات متكررة   |
