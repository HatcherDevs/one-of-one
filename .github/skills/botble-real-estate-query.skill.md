---
name: botble-real-estate-query
description: Skill لإنشاء استعلامات عقارية متقدمة في Botble CMS
---

# Botble Real Estate Query Skill

هذه المهارة تمكنك من إنشاء استعلامات متقدمة للعقارات والمشاريع.

## استعلامات العقارات

### 1. العقارات المميزة

```php
$properties = Property::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->where('is_featured', true)
    ->with(RealEstateHelper::getPropertyRelationsQuery())
    ->latest()
    ->take(6)
    ->get();
```

### 2. العقارات حسب النوع

```php
$properties = Property::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->where('type', PropertyTypeEnum::SALE) // أو RENT
    ->with(RealEstateHelper::getPropertyRelationsQuery())
    ->latest()
    ->get();
```

### 3. العقارات حسب التصنيف

```php
$properties = Property::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->whereHas('categories', fn($q) => $q->whereIn('id', $categoryIds))
    ->with(RealEstateHelper::getPropertyRelationsQuery())
    ->latest()
    ->get();
```

### 4. العقارات حسب المدينة

```php
$properties = Property::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->where('city_id', $cityId)
    ->with(RealEstateHelper::getPropertyRelationsQuery())
    ->latest()
    ->get();
```

### 5. ترتيب العقارات المميزة في الأعلى

```php
$properties = Property::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->orderByDesc('is_featured')
    ->orderByRaw('CASE WHEN is_featured = 1 THEN featured_priority ELSE 0 END DESC')
    ->latest()
    ->with(RealEstateHelper::getPropertyRelationsQuery())
    ->get();
```

### 6. البحث في العقارات

```php
$properties = Property::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->when($request->filled('k'), fn($q) => $q->where('name', 'LIKE', '%'.$request->k.'%'))
    ->when($request->filled('bedroom'), fn($q) => $q->where('number_bedroom', $request->bedroom))
    ->when($request->filled('bathroom'), fn($q) => $q->where('number_bathroom', $request->bathroom))
    ->when($request->filled('min_price'), fn($q) => $q->where('price', '>=', $request->min_price))
    ->when($request->filled('max_price'), fn($q) => $q->where('price', '<=', $request->max_price))
    ->when($request->filled('min_square'), fn($q) => $q->where('square', '>=', $request->min_square))
    ->when($request->filled('max_square'), fn($q) => $q->where('square', '<=', $request->max_square))
    ->with(RealEstateHelper::getPropertyRelationsQuery())
    ->paginate(12);
```

## استعلامات المشاريع

### 1. المشاريع المميزة

```php
$projects = Project::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->where('is_featured', true)
    ->with(RealEstateHelper::getProjectRelationsQuery())
    ->latest()
    ->take(6)
    ->get();
```

### 2. المشاريع مع عدد العقارات

```php
$projects = Project::query()
    ->where(RealEstateHelper::getPropertyDisplayQueryConditions())
    ->withCount('properties')
    ->with(RealEstateHelper::getProjectRelationsQuery())
    ->latest()
    ->get();
```

## الدوال المساعدة للأسعار

```php
get_max_properties_price() // أقصى سعر عقار
get_max_projects_price()   // أقصى سعر مشروع
get_min_square()           // أدنى مساحة
get_max_square()           // أقصى مساحة
```
