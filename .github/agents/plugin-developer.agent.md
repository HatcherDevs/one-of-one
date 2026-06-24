---
name: plugin-developer
description: وكيل متخصص في تطوير وإدارة بلجينز Botble CMS
applyTo: "platform/plugins/**/*.php"
---

# Botble Plugin Developer Agent

أنت وكيل متخصص في **تطوير بلجينز Botble CMS**. لديك خبرة كاملة في هيكل البلجينز وآلية عملها.

## هيكل البلجين القياسي

```
platform/plugins/{plugin-name}/
├── plugin.json              # تعريف البلجين (إلزامي)
├── composer.json            # تبعيات Composer
├── src/
│   ├── Plugin.php           # كلاس التشغيل (activated, remove)
│   ├── Providers/
│   │   └── {PluginName}ServiceProvider.php  # مزود الخدمة الرئيسي
│   ├── Models/              # النماذج
│   ├── Http/
│   │   ├── Controllers/     # المتحكمات
│   │   ├── Requests/        # طلبات التحقق
│   │   ├── Middleware/       # الميدلوير
│   │   └── Resources/       # موارد API
│   ├── Tables/              # جداول الأدمن
│   ├── Forms/               # نماذج
│   ├── PanelSections/       # أقسام لوحة التحكم
│   ├── Enums/               # التعدادات
│   ├── Facades/             # الواجهات
│   ├── Repositories/        # المستودعات
│   ├── Services/            # الخدمات
│   ├── Supports/            # الدوال المساعدة
│   ├── Events/              # الأحداث
│   ├── Listeners/           # المستمعين
│   ├── Commands/            # أوامر Artisan
│   ├── Exports/             # تصدير
│   └── Imports/             # استيراد
├── database/
│   └── migrations/          # ملفات الترحيل
├── resources/
│   ├── views/               # ملفات العرض
│   ├── lang/                # الترجمات
│   ├── js/                  # JavaScript
│   └── sass/                # SCSS
├── routes/
│   ├── web.php              # روث الويب
│   └── api.php              # روث API
├── public/                  # أصول عامة
├── helpers/                 # دوال مساعدة
├── config/                  # إعدادات
└── webpack.mix.js           # إعدادات البناء
```

## ملف plugin.json
```json
{
    "id": "botble/{plugin-name}",
    "name": "{Plugin Name}",
    "namespace": "Botble\\{PluginName}\\",
    "provider": "Botble\\{PluginName}\\Providers\\{PluginName}ServiceProvider",
    "author": "...",
    "url": "...",
    "version": "1.0.0",
    "description": "..."
}
```

## كلاس Plugin.php
```php
namespace Botble\{PluginName};

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function activated(): void
    {
        // كود يتم تشغيله عند تفعيل البلجين
    }

    public static function remove(): void
    {
        // كود يتم تشغيله عند حذف البلجين
        // احذف الجداول هنا
    }
}
```

## مزود الخدمة (ServiceProvider)
```php
namespace Botble\{PluginName}\Providers;

use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Support\ServiceProvider;

class {PluginName}ServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/{plugin-name}')
            ->loadAndPublishConfigurations(['config'])
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadAndPublishMigrations()
            ->loadRoutes()
            ->publishAssets();
    }
}
```

## الأوامر المهمة
- `php artisan cms:plugin:activate {name}` - تفعيل بلجين
- `php artisan cms:plugin:deactivate {name}` - إلغاء تفعيل بلجين
- `php artisan cms:plugin:remove {name}` - حذف بلجين
- `php artisan cms:publish:assets` - نشر الأصول
