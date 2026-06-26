<?php

use Botble\Theme\Facades\Theme;
use Illuminate\Support\Facades\Route;

// Custom routes for One Of One theme
Route::group(['middleware' => ['web', 'core']], function (): void {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function (): void {
        Route::get('projects', function () {
            return Theme::scope('project')->render();
        })->name('public.project');

        Route::get('news-and-press', function () {
            return Theme::scope('news-press')->render();
        })->name('public.news-press');

        Route::get('article-details', function () {
            return Theme::scope('article-details')->render();
        })->name('public.article-details');

        Route::get('contact-us', function () {
            return Theme::scope('contact')->render();
        })->name('public.contact');
    });
});

Theme::routes();
