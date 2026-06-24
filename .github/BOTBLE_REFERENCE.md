# 📚 Botble CMS - دليل المرجع السريع

## 🎯 Agents (الوكلاء)

| الوكيل | اسم الملف | الاستخدام |
|--------|-----------|-----------|
| 🎨 **theme-developer** | `.github/agents/theme-developer.agent.md` | تطوير ثيمات Botble (layouts, partials, views, shortcodes) |
| 🏠 **real-estate-manager** | `.github/agents/real-estate-manager.agent.md` | إدارة العقارات، المشاريع، التصنيفات، العملاء |
| 🔌 **plugin-developer** | `.github/agents/plugin-developer.agent.md` | إنشاء وتعديل بلجينز Botble |

**للاستخدام**: الـ Agents تشتغل تلقائياً حسب نوع الملف اللي بتشتغل عليه.

---

## 📝 Prompts (برومبتات جاهزة)

| البرومبت | اسم الملف | الاستخدام |
|----------|-----------|-----------|
| 🖥️ **Create Theme Page** | `.github/prompts/create-theme-page.prompt.md` | إنشاء صفحة ثيم جديدة |
| ⚡ **Create Shortcode** | `.github/prompts/create-shortcode.prompt.md` | إنشاء شورت كود جديد |
| ⚙️ **Add Theme Options** | `.github/prompts/add-theme-options.prompt.md` | إضافة خيارات ثيم |
| 🏘️ **Create Properties Page** | `.github/prompts/create-properties-page.prompt.md` | إنشاء صفحة قائمة عقارات |
| 🏡 **Create Property Detail** | `.github/prompts/create-property-detail.prompt.md` | إنشاء صفحة تفاصيل عقار |

**للاستخدام**: اكتب `#create-theme-page` أو `استخدم create-shortcode` في الشات.

---

## 🛠️ Skills (مهارات)

| المهارة | اسم الملف | الاستخدام |
|---------|-----------|-----------|
| 🏗️ **Create Botble Theme** | `.github/skills/create-botble-theme.skill.md` | إنشاء ثيم كامل من الصفر |
| ⚡ **Create Botble Shortcode** | `.github/skills/create-botble-shortcode.skill.md` | إنشاء شورت كود متكامل |
| 🔍 **Botble Real Estate Query** | `.github/skills/botble-real-estate-query.skill.md` | استعلامات عقارية متقدمة |
| 📦 **Botble Widget Creation** | `.github/skills/botble-widget-creation.skill.md` | إنشاء ودجت مخصصة |

---

## 🎨 هيكل الثيم الكامل

```
platform/themes/{theme-name}/
├── theme.json                    # تعريف الثيم
├── config.php                    # إعدادات وأحداث الثيم
├── webpack.mix.js                # إعدادات البناء
│
├── layouts/                      # التخطيطات
│   ├── base.blade.php            # القالب الأساسي (HTML)
│   ├── default.blade.php         # التخطيط الافتراضي
│   ├── full-width.blade.php      # كامل العرض
│   └── no-layout.blade.php       # بدون تخطيط
│
├── views/                        # صفحات العرض
│   ├── index.blade.php           # الرئيسية
│   ├── page.blade.php            # صفحة عادية
│   ├── post.blade.php            # مقال
│   ├── search.blade.php          # بحث
│   ├── category.blade.php        # تصنيف
│   ├── tag.blade.php             # وسم
│   ├── 404.blade.php             # خطأ
│   ├── 500.blade.php             # خطأ سيرفر
│   ├── 503.blade.php             # صيانة
│   ├── blog/                     # صفحات المدونة
│   └── real-estate/              # صفحات العقارات
│       ├── properties.blade.php  # قائمة عقارات
│       ├── property.blade.php    # تفاصيل عقار
│       ├── projects.blade.php    # قائمة مشاريع
│       ├── project.blade.php     # تفاصيل مشروع
│       ├── agents.blade.php      # قائمة وكلاء
│       ├── agent.blade.php       # صفحة وكيل
│       ├── wishlist.blade.php    # المفضلة
│       ├── properties/           # أجزاء القائمة
│       ├── projects/             # أجزاء المشاريع
│       ├── partials/             # أجزاء مشتركة
│       ├── single-layouts/       # تخطيطات التفاصيل
│       └── listing-layouts/      # تخطيطات القائمة
│
├── partials/                     # أجزاء قابلة لإعادة الاستخدام
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
│   └── shortcodes/               # قوالب الشورت كود
│
├── functions/                    # دوال PHP
│   ├── functions.php             # الوظائف الأساسية
│   ├── theme-options.php         # خيارات الثيم
│   ├── shortcodes.php            # شورت كود عام
│   ├── shortcodes-real-estate.php
│   ├── shortcodes-blog.php
│   ├── shortcodes-contact.php
│   ├── shortcodes-faq.php
│   ├── shortcodes-location.php
│   ├── shortcodes-testimonial.php
│   └── menu-icon-image.php
│
├── src/                          # PHP classes
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
│
├── routes/web.php                # روث مخصصة
├── widgets/                      # ودجت مخصصة
├── assets/                       # ملفات التطوير
│   ├── js/script.js
│   └── sass/style.scss
├── public/                       # ملفات الإنتاج
│   ├── css/style.css
│   └── js/script.js
├── lang/en.json                  # ترجمة
└── screenshot.png                # صورة الثيم
```

---

## 🔑 أهم دوال Botble

### الثيم (Theme)
| الدالة | الوظيفة |
|--------|---------|
| `Theme::partial('name')` | استدعاء جزء (header, footer) |
| `Theme::content()` | محتوى الصفحة الأساسي |
| `Theme::header()` | رأس الصفحة (assets) |
| `Theme::footer()` | ذيل الصفحة (assets) |
| `Theme::layout('full-width')` | تغيير تخطيط الصفحة |
| `Theme::set('key', 'value')` | تعيين متغير للثيم |
| `Theme::get('key')` | قراءة متغير من الثيم |
| `Theme::getThemeNamespace('path')` | المسار الكامل للثيم |
| `Theme::asset()->usePath()->add()` | تسجيل CSS/JS |
| `Theme::breadcrumb()->render()` | عرض البريد كرامب |
| `Theme::getLogoImage()` | عرض الشعار |
| `Theme::htmlAttributes()` | خصائص HTML |
| `Theme::bodyAttributes()` | خصائص Body |
| `Theme::routes()` | تسجيل روث الثيم |

### خيارات الثيم (Theme Options)
| الدالة | الوظيفة |
|--------|---------|
| `theme_option('key', 'default')` | قراءة خيار ثيم |
| `theme_option()->setField([...])` | إضافة حقل خيارات |
| `ThemeOption::setSection(...)` | إضافة قسم خيارات |

### العقارات (Real Estate)
| الدالة | الوظيفة |
|--------|---------|
| `RealEstateHelper::isLoginEnabled()` | هل تسجيل الدخول مفعل؟ |
| `RealEstateHelper::isRegisterEnabled()` | هل التسجيل مفعل؟ |
| `RealEstateHelper::isEnabledProjects()` | هل المشاريع مفعلة؟ |
| `RealEstateHelper::isEnabledWishlist()` | هل المفضلة مفعلة؟ |
| `RealEstateHelper::getPropertyDisplayQueryConditions()` | شروط عرض العقارات |
| `RealEstateHelper::getPropertyRelationsQuery()` | علاقات العقارات |
| `RealEstateHelper::getProjectRelationsQuery()` | علاقات المشاريع |
| `RealEstateHelper::getPropertiesPerPageList()` | خيارات عدد العقارات لكل صفحة |
| `RealEstateHelper::getPropertiesListPageUrl()` | رابط صفحة العقارات |

### عامة
| الدالة | الوظيفة |
|--------|---------|
| `is_plugin_active('name')` | التحقق من تفعيل بلجين |
| `RvMedia::image($url, $alt)` | عرض صورة |
| `RvMedia::getImageUrl($url)` | الحصول على رابط الصورة |
| `Menu::renderMenuLocation('main-menu')` | عرض القائمة |
| `BaseHelper::getHomepageUrl()` | رابط الرئيسية |
| `BaseHelper::clean($html)` | تنقية HTML |
| `BaseHelper::isRtlEnabled()` | هل الاتجاه RTL؟ |
| `register_page_template([...])` | تسجيل تخطيطات الصفحات |
| `register_sidebar([...])` | تسجيل مناطق الودجت |
| `Shortcode::register()` | تسجيل شورت كود |
| `Shortcode::setAdminConfig()` | إعدادات الشورت كود |
| `Shortcode::setPreviewImage()` | صورة معاينة الشورت كود |
| `shortcode()` | مساعد الشورت كود |
| `dynamic_sidebar('id')` | عرض منطقة ودجت |
| `apply_filters('name', $value)` | تطبيق فلتر |
| `add_filter('name', callback)` | إضافة فلتر |

---

## 🏠 Real Estate Models (النماذج)

| النموذج | الجدول | العلاقات الرئيسية |
|---------|--------|-------------------|
| `Property` | `re_properties` | project, categories, features, facilities, reviews, author |
| `Project` | `re_projects` | properties, categories, features, facilities |
| `Account` | `re_accounts` | properties (as author) |
| `Category` | `re_categories` | properties, projects (BelongsToMany) |
| `Feature` | `re_features` | properties, projects (BelongsToMany) |
| `Facility` | `re_facilities` | properties, projects (BelongsToMany) |
| `Investor` | `re_investors` | properties, projects |
| `Review` | `re_reviews` | property (MorphMany) |
| `Package` | `re_packages` | accounts (BelongsToMany) |
| `Invoice` | `re_invoices` | account, package |
| `Currency` | `re_currencies` | properties, projects |
| `CustomField` | `re_custom_fields` | properties (MorphMany) |

---

## 🔤 Real Estate Enums (التعدادات)

| الـ Enum | القيم |
|----------|-------|
| `PropertyStatusEnum` | NotAvailable, PreSelling, Selling, Renting, Rented, Sold |
| `PropertyTypeEnum` | Sale, Rent |
| `PropertyPeriodEnum` | Daily, Weekly, Monthly, Yearly |
| `ModerationStatusEnum` | Pending, Approved, Rejected, Draft |
| `ProjectStatusEnum` | NotAvailable, PreSelling, Selling, Renting, Rented, Sold |

---

## 🧩 أنواع حقول الشورت كود

| الحقل | الكلاس | الاستخدام |
|-------|--------|-----------|
| نص | `TextField` | نصوص قصيرة |
| نص طويل | `TextareaField` | نصوص طويلة |
| رقم | `NumberField` | أرقام |
| اختيار | `SelectField` | اختيار من قائمة |
| تشغيل/إيقاف | `OnOffField` | تفعيل/إلغاء |
| صورة | `MediaImageField` | صور |
| لون | `ColorField` | ألوان |
| أيقونة | `CoreIconField` | أيقونات |
| اختيار بصري | `UiSelectorField` | اختيار بصور |
| تبويبات | `ShortcodeTabsField` | بيانات متكررة |

---

## ⚙️ أقسام خيارات الثيم

| القسم | الـ ID | الاستخدام |
|-------|--------|-----------|
| عام | `opt-text-subsection-general` | إعدادات عامة |
| الأنماط | `opt-text-subsection-styles` | ألوان، خطوط |
| الشعار | `opt-text-subsection-logo` | Logo |
| البريد كرامب | `opt-text-subsection-breadcrumb` | إعدادات البريد كرامب |
| العقارات | `opt-text-subsection-real-estate` | إعدادات العقارات |
| المدونة | `opt-text-subsection-blog` | إعدادات المدونة |

---

## 🚀 أوامر Artisan المهمة

| الأمر | الوظيفة |
|-------|---------|
| `php artisan cms:theme:activate {name}` | تفعيل ثيم |
| `php artisan cms:theme:assets:publish` | نشر أصول الثيم |
| `php artisan cms:publish:assets` | نشر كل الأصول |
| `php artisan cms:plugin:activate {name}` | تفعيل بلجين |
| `php artisan cms:plugin:deactivate {name}` | إلغاء تفعيل بلجين |
| `php artisan cms:plugin:remove {name}` | حذف بلجين |
| `vendor/bin/pint` | تنسيق الكود |
| `php artisan config:clear` | مسح cache الإعدادات |
| `php artisan cache:clear` | مسح cache |
| `php artisan storage:link` | ربط التخزين |
| `php artisan test` | تشغيل الاختبارات |

---

## 📁 مسارات الملفات المهمة

| المسار | الوصف |
|--------|-------|
| `platform/themes/homzen/` | ✅ الثيم النشط - المرجع الأساسي |
| `platform/themes/one-of-one/` | 🚧 الثيم المخصص قيد التطوير |
| `platform/plugins/real-estate/` | 🏠 الوحدة العقارية |
| `platform/core/` | ❌ لا تعدل - نواة النظام |
| `.github/copilot-instructions.md` | 📋 التعليمات الرئيسية |
| `.github/agents/` | 🤖 الوكلاء المخصصين |
| `.github/prompts/` | 📝 البرومبتات الجاهزة |
| `.github/skills/` | 🛠️ المهارات المخصصة |
| `public/themes/hatch-concept-studio/` | 🎨 أصول الثيم المنشورة |

---

> **ملاحظة**: هذا الملف للمساعدة السريعة. أي استفسار أو أمر مش موجود، اسألني وأنا أضيفه 👍
