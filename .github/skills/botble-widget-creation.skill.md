---
name: botble-widget-creation
description: Skill لإنشاء ودجت (Widget) مخصصة في Botble CMS
---

# Botble Widget Creation Skill

هذه المهارة تمكنك من إنشاء ودجت مخصصة في Botble CMS.

## هيكل الودجت

```
platform/themes/{theme-name}/widgets/{widget-name}/
├── widget.php                    # تعريف الودجت
├── setup.blade.php               # قالب الإعداد (في الأدمن)
└── templates/
    ├── frontend.blade.php        # قالب العرض (للمستخدم)
    └── backend.blade.php         # قالب الإدارة (اختياري)
```

## ملف تعريف الودجت (widget.php)

```php
<?php

use Botble\Widget\AbstractWidget;

class {WidgetName}Widget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => __('{Widget Name}'),
            'description' => __('{Widget Description}'),
            'data' => [
                'title' => null,
                'data' => null,
            ],
        ]);
    }

    public function adminForm(): string
    {
        return view('widgets.{widget-name}.setup', $this->getData())->render();
    }
}
```

## قالب الإعداد (setup.blade.php)

```blade
<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input type="text" class="form-control" name="title" value="{{ $title }}">
</div>
```

## قالب العرض (templates/frontend.blade.php)

```blade
@if ($title)
    <h3 class="widget-title">{{ $title }}</h3>
@endif
<div class="widget-content">
    {{ $data }}
</div>
```

## تسجيل الودجت

الودجت يتم تسجيلها تلقائياً عند وضعها في مجلد `widgets/` داخل الثيم.

## مناطق الودجت (Sidebars)

```php
register_sidebar([
    'id' => 'sidebar_id',
    'name' => __('Sidebar Name'),
    'description' => __('Sidebar Description'),
]);
```

## الودجت المدمجة في Homzen

- `blog-categories/` - تصنيفات المدونة
- `blog-posts/` - أحدث المقالات
- `blog-search/` - بحث في المدونة
- `blog-tags/` - وسوم المدونة
- `core-simple-menu/` - قائمة بسيطة
- `newsletter/` - النشرة البريدية
- `related-posts/` - مقالات ذات صلة
- `site-copyright/` - حقوق النشر
- `site-information/` - معلومات الموقع
- `site-logo/` - الشعار
- `social-links/` - روابط التواصل
