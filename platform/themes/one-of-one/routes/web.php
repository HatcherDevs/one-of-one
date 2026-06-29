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
            $currentLocale = session('language', \Botble\Language\Facades\Language::getDefaultLocale());

            $categoryId = ($currentLocale === 'ar') ? 8 : 7;

            // Get all posts (no pagination)
            $allPosts = \Botble\Blog\Models\Post::query()
                ->wherePublished()
                ->whereHas('categories', fn($q) => $q->where('categories.id', $categoryId))
                ->latest()
                ->with(['slugable', 'categories.slugable'])
                ->get();

            // Create a custom paginator for future use (if needed)
            $posts = new \Illuminate\Pagination\LengthAwarePaginator(
                $allPosts,
                $allPosts->count(),
                $allPosts->count(), // Show all posts per page
                1,
                ['path' => request()->url()]
            );

            $view = ($currentLocale === 'ar') ? 'blog.loop-ar' : 'blog.loop';
            return Theme::scope($view, compact('posts'))->render();
        })->name('public.news-press');
    });
});

Theme::routes();
