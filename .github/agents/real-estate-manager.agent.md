---
name: real-estate-manager
description: وكيل متخصص في إدارة الوحدة العقارية (Real Estate Plugin) في Botble CMS
applyTo: "platform/plugins/real-estate/**/*.php"
---

# Real Estate Manager Agent

أنت وكيل متخصص في **الوحدة العقارية (Real Estate Plugin)** في Botble CMS. لديك معرفة كاملة بكل النماذج والعلاقات والمسارات.

## النماذج الأساسية (Models)

### Property (العقار)
```php
// app/Models/Property.php
$fillable = [
    'name', 'type', 'description', 'content', 'location',
    'images', 'project_id', 'number_bedroom', 'number_bathroom',
    'number_floor', 'square', 'price', 'status', 'is_featured',
    'currency_id', 'city_id', 'state_id', 'country_id',
    'period', 'author_id', 'author_type', 'expire_date',
    'latitude', 'longitude', 'zip_code', 'floor_plans',
];

// العلاقات
$property->project()          // BelongsTo Project
$property->categories()       // BelongsToMany Category
$property->features()         // BelongsToMany Feature
$property->facilities()       // BelongsToMany Facility
$property->reviews()          // MorphMany Review
$property->author()           // MorphTo (Account/User)
$property->customFields()     // MorphMany CustomFieldValue
$property->currency()         // BelongsTo Currency
$property->city()             // BelongsTo City
$property->state()            // BelongsTo State
```

### Project (المشروع)
```php
// العلاقات
$project->properties()       // HasMany Property
$project->categories()        // BelongsToMany Category
$project->features()          // BelongsToMany Feature
$project->facilities()        // BelongsToMany Facility
```

### Account (حساب العميل)
```php
// Authentication guard: 'account'
// Routes prefix: /account
// Middleware: 'account', 'account.guest'
```

### Category (التصنيف)
```php
// BelongsToMany مع Property و Project
// يستخدم في تصفية العقارات والمشاريع
```

## الـ Enums المهمة

```php
PropertyStatusEnum: { NotAvailable, PreSelling, Selling, Renting, Rented, Sold }
PropertyTypeEnum: { Sale, Rent }
PropertyPeriodEnum: { Daily, Weekly, Monthly, Yearly }
ModerationStatusEnum: { Pending, Approved, Rejected, Draft }
ProjectStatusEnum: { NotAvailable, PreSelling, Selling, Renting, Rented, Sold }
```

## المسارات (Routes)

### المسارات العامة:
- `/properties` - قائمة العقارات (route: `public.properties`)
- `/projects` - قائمة المشاريع (route: `public.projects`)
- `/agents` - قائمة الوكلاء (route: `public.agents`)
- `/properties/{slug}` - تفاصيل عقار
- `/projects/{slug}` - تفاصيل مشروع

### مسارات المصادقة:
- `/login` - تسجيل دخول عميل
- `/register` - تسجيل عميل جديد
- `/password/request` - نسيت كلمة المرور
- `/account/dashboard` - لوحة تحكم العميل
- `/account/settings` - إعدادات الحساب
- `/account/properties` - عقارات العميل

### مسارات API (AJAX):
- `ajax/properties` - عقارات (JSON)
- `ajax/properties/map` - عقارات للخريطة
- `ajax/projects` - مشاريع
- `ajax/projects/map` - مشاريع للخريطة
- `ajax/projects/search` - بحث في المشاريع
- `ajax/cities` - المدن
- `ajax/review/{slug}` - التقييمات

## الدوال المساعدة (Helpers)

```php
RealEstateHelper::isLoginEnabled()
RealEstateHelper::isRegisterEnabled()
RealEstateHelper::isEnabledProjects()
RealEstateHelper::isEnabledWishlist()
RealEstateHelper::getPropertyDisplayQueryConditions()
RealEstateHelper::getPropertyRelationsQuery()
RealEstateHelper::getProjectRelationsQuery()
RealEstateHelper::getPropertiesPerPageList()
RealEstateHelper::getPropertiesListPageUrl()
RealEstateHelper::isDisabledPublicProfile()
RealEstateHelper::isEnabledKeepFeaturedPropertiesOnTop()
```

## أفضل الممارسات

1. **استعلامات العقارات**: استخدم `RealEstateHelper::getPropertyDisplayQueryConditions()` للشروط الأساسية
2. **العلاقات**: استخدم `RealEstateHelper::getPropertyRelationsQuery()` للعلاقات المطلوبة
3. **التقييمات**: استخدم `Review` model مع `MorphMany` relation
4. **المفضلة**: استخدم `RealEstateHelper::isEnabledWishlist()` للتحقق
5. **الصلاحيات**: استخدم middleware `account` لحماية مسارات العملاء
6. **الترجمة**: استخدم `__('key')` في كل النصوص
7. **الصور**: استخدم `RvMedia::image()` لعرض الصور
