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
});

// Register menu locations
Event::listen(RouteMatched::class, function (): void {
    Menu::addMenuLocation('sidebar-menu', __('Sidebar Menu'));
    Menu::addMenuLocation('footer-menu', __('Footer Menu'));
});
