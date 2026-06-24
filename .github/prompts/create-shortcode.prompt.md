أنت مطور Botble CMS. قم بإنشاء شورت كود جديد لثيم {theme_name}.

## المطلوب
1. سجل الشورت كود في `functions/shortcodes.php` داخل `Event::listen(RouteMatched::class)`
2. أنشئ القالب في `partials/shortcodes/{name}/index.blade.php`
3. أضف صورة معاينة في `public/images/shortcodes/`

## النمط القياسي
```php
Shortcode::register('{name}', __('{Title}'), __('{Description}'), function (ShortcodeCompiler $shortcode) {
    return Theme::partial('shortcodes.{name}.index', compact('shortcode'));
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

## أنواع الحقول المتاحة
- `TextField` - نص
- `TextareaField` - نص طويل
- `NumberField` - رقم
- `SelectField` - اختيار من قائمة
- `OnOffField` - تشغيل/إيقاف
- `MediaImageField` - صورة
- `ColorField` - لون
- `CoreIconField` - أيقونة
- `UiSelectorField` - اختيار بصري
- `ShortcodeTabsField` - تبويبات متكررة
