أنت مطور Botble CMS. قم بإضافة خيارات ثيم جديدة لثيم {theme_name}.

## المطلوب
أضف الخيارات في `functions/theme-options.php` داخل `app('events')->listen(RenderingThemeOptionSettings::class)`

## النمط القياسي
```php
ThemeOption::setSection(
    ThemeOptionSection::make('opt-text-subsection-{section}')
        ->title(__('{Section Title}'))
        ->icon('ti ti-{icon}')
        ->fields([
            TextField::make()
                ->name('{field_name}')
                ->label(__('{Field Label}'))
                ->defaultValue('{default}'),
            ColorField::make()
                ->name('{color_field}')
                ->label(__('{Color Label}'))
                ->defaultValue('#hexcolor'),
            MediaImageField::make()
                ->name('{image_field}')
                ->label(__('{Image Label}')),
            ToggleField::make()
                ->name('{toggle_field}')
                ->label(__('{Toggle Label}'))
                ->defaultValue(true),
            SelectField::make()
                ->name('{select_field}')
                ->label(__('{Select Label}'))
                ->defaultValue('option1')
                ->options([
                    'option1' => __('Option 1'),
                    'option2' => __('Option 2'),
                ]),
        ])
);
```

## الأقسام المتاحة
- `opt-text-subsection-general` - عام
- `opt-text-subsection-styles` - الأنماط
- `opt-text-subsection-logo` - الشعار
- `opt-text-subsection-breadcrumb` - البريد كرامب
- `opt-text-subsection-real-estate` - العقارات
- `opt-text-subsection-blog` - المدونة

## أنواع الحقول
- `TextField::make()` - نص
- `ColorField::make()` - لون
- `MediaImageField::make()` - صورة
- `ToggleField::make()` - تشغيل/إيقاف
- `SelectField::make()` - اختيار
- `NumberField::make()` - رقم
- `IconField::make()` - أيقونة
- `RepeaterField::make()` - حقل متكرر
- `UiSelectorField::make()` - اختيار بصري
