# قائمة الملفات والمجلدات المهمة - مشروع One-of-One

## 📁 الملفات الأساسية للمشروع

### ملفات الإعداد الرئيسية
- `.env` - متغيرات البيئة والإعدادات
- `composer.json` - تبعيات PHP والحزم
- `package.json` - تبعيات Node.js والـ frontend
- `webpack.mix.js` - إعدادات البناء والتطوير

### ملفات Laravel الأساسية
- `artisan` - أداة سطر الأوامر
- `bootstrap/app.php` - تهيئة التطبيق (Laravel 12)
- `config/` - مجلد إعدادات التطبيق
- `routes/web.php` - مسارات الويب
- `routes/console.php` - أوامر Artisan مخصصة

## 🏗️ مجلد Platform (نواة Botble)

### المجلدات الأساسية
```
platform/
├── core/              # نواة Botble CMS
├── packages/          # الحزم الأساسية
│   ├── menu/         # إدارة القوائم
│   ├── page/         # إدارة الصفحات  
│   ├── seo-helper/   # تحسين SEO
│   ├── shortcode/    # الرموز المختصرة
│   ├── sitemap/      # خريطة الموقع
│   ├── slug/         # إدارة الروابط
│   ├── theme/        # إدارة الثيمات
│   └── widget/       # إدارة الودجت
├── plugins/          # البلجينز
└── themes/           # الثيمات
```

### البلجينز المثبتة (plugins/)
- `ads/` - إدارة الإعلانات
- `analytics/` - Google Analytics
- `api/` - REST API
- `audit-log/` - سجل النشاطات
- `backup/` - النسخ الاحتياطي
- `blog/` - نظام المدونة
- `captcha/` - الحماية من البوتات
- `contact/` - نماذج التواصل
- `cookie-consent/` - موافقة الكوكيز
- `faq/` - الأسئلة الشائعة
- `language/` - إدارة اللغات
- `language-advanced/` - ميزات لغوية متقدمة
- `location/` - إدارة المواقع الجغرافية
- `newsletter/` - القائمة البريدية
- `payment/` - أنظمة الدفع
- `real-estate/` - الوحدة العقارية الرئيسية
- `rss-feed/` - RSS feeds
- `social-login/` - تسجيل الدخول الاجتماعي
- `testimonial/` - آراء العملاء

### ملفات الدفع المختلفة
- `mollie/` - بوابة دفع Mollie
- `paypal/` - نظام PayPal
- `paystack/` - بوابة Paystack
- `razorpay/` - نظام Razorpay
- `stripe/` - بوابة Stripe
- `sslcommerz/` - بوابة SSLCommerz

## 🎨 الثيمات (themes/)

### ثيم Homzen (النشط حالياً)
```
themes/homzen/
├── assets/           # الملفات الثابتة (CSS, JS, Images)
├── config/           # إعدادات الثيم
├── functions/        # وظائف PHP مخصصة
├── layouts/          # تخطيطات الصفحات
├── partials/         # أجزاء الصفحات القابلة للإعادة
├── views/            # ملفات العرض
├── widgets/          # ودجت مخصصة
└── theme.json        # معلومات الثيم
```

### ثيم One-of-One (قيد التطوير)
```
themes/one-of-one/
├── views/
│   └── index.blade.php  # صفحة أساسية فقط
└── theme.json           # معلومات الثيم
```

## 🏘️ وحدة Real Estate

### ملفات المتحكمات (Controllers)
- `AccountController.php` - إدارة حسابات العملاء
- `PropertyController.php` - إدارة العقارات
- `ProjectController.php` - إدارة المشاريع
- `CategoryController.php` - تصنيفات العقارات
- `FacilityController.php` - إدارة المرافق
- `InvestorController.php` - إدارة المستثمرين
- `ReviewController.php` - تقييمات العقارات
- `PackageController.php` - باقات العضوية
- `InvoiceController.php` - نظام الفواتير

### ملفات النماذج (Models)
- `Property.php` - نموذج العقار
- `Project.php` - نموذج المشروع
- `Account.php` - نموذج حساب العميل
- `Category.php` - نموذج التصنيف
- `Feature.php` - نموذج المميزات
- `Facility.php` - نموذج المرافق
- `Investor.php` - نموذج المستثمر

## 💾 قاعدة البيانات

### جداول العقارات الرئيسية
- `re_properties` - العقارات
- `re_projects` - المشاريع
- `re_categories` - تصنيفات العقارات
- `re_features` - مميزات العقارات
- `re_facilities` - المرافق
- `re_investors` - المستثمرين
- `re_accounts` - حسابات العملاء
- `re_packages` - باقات العضوية
- `re_invoices` - الفواتير

### جداول الترجمة
- `*_translations` - جداول الترجمة لكل وحدة
- `languages` - اللغات المتاحة
- `language_meta` - معلومات اللغات

### جداول النظام
- `users` - المستخدمين الإداريين
- `roles` - الأدوار والصلاحيات
- `settings` - إعدادات النظام
- `media_files` - ملفات الوسائط
- `payments` - المدفوعات
- `contacts` - رسائل التواصل

## 📱 ملفات الـ API

### مسارات API
- `api/v1/properties` - API العقارات
- `api/v1/projects` - API المشاريع  
- `api/v1/auth/*` - مصادقة المستخدمين
- `api/v1/languages` - API اللغات

### Controllers للـ API
- `API/PropertyController.php`
- `API/ProjectController.php`
- `API/AuthController.php`
- `API/LanguageController.php`

## 🔧 ملفات الإعداد المهمة

### إعدادات Laravel
- `config/app.php` - إعدادات التطبيق الأساسية
- `config/database.php` - إعدادات قاعدة البيانات
- `config/auth.php` - إعدادات المصادقة
- `config/mail.php` - إعدادات البريد الإلكتروني
- `config/filesystems.php` - إعدادات التخزين

### إعدادات Botble
- `config/cms.php` - إعدادات نظام Botble
- `config/core.php` - إعدادات النواة
- `config/plugins.php` - إعدادات البلجينز

## 📄 ملفات التوثيق

### ملفات README وDocs
- `README.md` - دليل المشروع (إن وجد)
- `CHANGELOG.md` - سجل التغييرات (إن وجد)
- `docs/` - مجلد التوثيق (إن وجد)

### ملفات التحليل (تم إنشاؤها)
- `PROJECT_ANALYSIS.md` - تحليل شامل للمشروع
- `PROJECT_FILES.md` - هذا الملف

## 🚀 ملفات الإنتاج والتطوير

### ملفات البناء
- `webpack.mix.js` - إعدادات Laravel Mix
- `package-lock.json` - تثبيت إصدارات npm
- `composer.lock` - تثبيت إصدارات Composer

### مجلدات البناء والتخزين
- `public/` - الملفات العامة
- `storage/` - ملفات التخزين
- `vendor/` - حزم Composer
- `node_modules/` - حزم npm

## 🔍 ملفات مهمة للتطوير

### ملفات يجب مراقبتها
1. `.env` - لإعدادات البيئة
2. `platform/themes/one-of-one/` - للثيم المخصص
3. `platform/plugins/real-estate/` - للوحدة العقارية
4. `config/` - للإعدادات العامة
5. `database/migrations/` - لتحديثات قاعدة البيانات

### ملفات يفضل عدم تعديلها
1. `platform/core/` - نواة النظام
2. `vendor/` - حزم خارجية
3. `node_modules/` - حزم npm
4. `bootstrap/cache/` - ملفات cache
5. `storage/framework/` - ملفات النظام

---

**ملاحظة**: هذا الملف يوثق البنية الحالية للمشروع ويمكن تحديثه عند إضافة ملفات أو مجلدات جديدة.