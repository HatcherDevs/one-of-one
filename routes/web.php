<?php
use Illuminate\Support\Facades\Route;


Route::get('/set-lang/{locale}', function ($locale) {
    session(['dashboard_locale' => $locale]);

    session(['dashboard_locale_direction' => $locale === 'ar' ? 'rtl' : 'ltr']);

    return redirect()->back();
})->name('set.language');
