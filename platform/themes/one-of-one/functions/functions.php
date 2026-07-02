<?php

use Botble\Media\Facades\RvMedia;
use Botble\Menu\Facades\Menu;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Botble\Theme\Typography\TypographyItem;
use Illuminate\Routing\Events\RouteMatched;

register_page_template([
    'default' => __('Default'),
]);

app()->booted(function (): void {
    RvMedia::addSize('medium', 800, 800);

    ThemeSupport::registerSiteCopyright();
    ThemeSupport::registerSocialLinks();
    ThemeSupport::registerToastNotification();
    ThemeSupport::registerPreloader();
    ThemeSupport::registerDateFormatOption();
    ThemeSupport::registerLazyLoadImages();
    ThemeSupport::registerSiteLogoHeight(60);

    Theme::typography()
        ->registerFontFamilies([
            new TypographyItem('primary', __('Primary'), 'Inter'),
            new TypographyItem('heading', __('Heading'), 'Playfair Display'),
        ])
        ->registerFontSizes([
            new TypographyItem('h1', __('Heading 1'), 70),
            new TypographyItem('h2', __('Heading 2'), 48),
            new TypographyItem('h3', __('Heading 3'), 36),
            new TypographyItem('h4', __('Heading 4'), 30),
            new TypographyItem('h5', __('Heading 5'), 24),
            new TypographyItem('h6', __('Heading 6'), 20),
            new TypographyItem('body', __('Body'), 16),
        ]);

    // Add Page to language supported models
    add_filter('model_using_multi_language', function (array $models): array {
        if (!in_array('Botble\Page\Models\Page', $models)) {
            $models[] = 'Botble\Page\Models\Page';
        }
        return $models;
    });

    // Re-initialize model relations so Page gets the languageMeta relation
    if (is_plugin_active('language')) {
        \Botble\Language\Facades\Language::initModelRelations();
    }

    // Handle page translation switching (fixes getRelatedDataForOtherLanguage issue)
    add_filter('before_get_home_page_data_single', function ($query, $model): mixed {
        if (!$model instanceof \Botble\Page\Models\Page || !is_plugin_active('language')) {
            return $query;
        }

        $currentLocale = \Botble\Language\Facades\Language::getCurrentLocaleCode();
        $defaultLocale = \Botble\Language\Facades\Language::getDefaultLocaleCode();

        if ($currentLocale === $defaultLocale) {
            return $query;
        }

        $data = $query->first();
        if (!$data) {
            return $query;
        }

        $meta = \Botble\Language\Models\LanguageMeta::where('reference_id', $data->id)
            ->where('reference_type', \Botble\Page\Models\Page::class)
            ->first();

        if (!$meta || $meta->lang_meta_code === $currentLocale) {
            return $query;
        }

        $translatedId = \Botble\Language\Models\LanguageMeta::where('lang_meta_origin', $meta->lang_meta_origin)
            ->where('reference_id', '!=', $data->id)
            ->where('reference_type', \Botble\Page\Models\Page::class)
            ->where('lang_meta_code', $currentLocale)
            ->value('reference_id');

        if ($translatedId) {
            return $model->newQuery()->where('id', $translatedId);
        }

        return $query;
    }, 45, 2);
});

// Register menu locations
Event::listen(RouteMatched::class, function (): void {
    Menu::addMenuLocation('sidebar-menu', __('Sidebar Menu'));
    Menu::addMenuLocation('sidebar-menu-en', __('Sidebar Menu (English)'));
    Menu::addMenuLocation('sidebar-menu-ar', __('Sidebar Menu (Arabic)'));
    Menu::addMenuLocation('footer-menu', __('Footer Menu'));
});
