<?php

use Botble\Base\Forms\FieldOptions\ColorFieldOption;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\ColorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Shortcode\Compilers\Shortcode as ShortcodeCompiler;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\FieldOptions\ShortcodeTabsFieldOption;
use Botble\Shortcode\Forms\Fields\ShortcodeTabsField;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Illuminate\Routing\Events\RouteMatched;
use Illuminate\Support\Facades\Event;

Event::listen(RouteMatched::class, function (): void {
    ThemeSupport::registerGoogleMapsShortcode(Theme::getThemeNamespace('partials.shortcodes'));
    ThemeSupport::registerYoutubeShortcode();

    // ============================================================
    // 1. Hero Banner Shortcode
    // ============================================================
    Shortcode::register('hero-banner', __('Hero Banner'), __('Hero banner with video background and animated titles'), function (ShortcodeCompiler $shortcode): ?string {
        return Theme::partial('shortcodes.hero-banner.index', compact('shortcode'));
    });

    Shortcode::setPreviewImage('hero-banner', Theme::asset()->url('images/home/about-section.png'));

    Shortcode::setAdminConfig('hero-banner', function (array $attributes): ShortcodeForm {
        return ShortcodeForm::createFromArray($attributes)
            ->withLazyLoading()
            ->add('title_1', TextField::class, TextFieldOption::make()->label(__('Title 1 (Principle)'))->defaultValue('Principle'))
            ->add('title_2', TextField::class, TextFieldOption::make()->label(__('Title 2 (Person)'))->defaultValue('Person'))
            ->add('title_3', TextField::class, TextFieldOption::make()->label(__('Title 3 (Place)'))->defaultValue('Place'))
            ->add('text_color', ColorField::class, ColorFieldOption::make()->label(__('Text color'))->defaultValue('#dacec3'))
            ->add('video_url', TextField::class, TextFieldOption::make()
                ->label(__('Background video URL'))
                ->helperText(__('Enter the video URL (e.g., /storage/uploads/videos/home.mp4 or https://example.com/video.mp4)'))
                ->defaultValue('')
            );
    });

    // ============================================================
    // 2. About Section Shortcode
    // ============================================================
    Shortcode::register('about-section', __('About Section'), __('About section with description and overlay titles'), function (ShortcodeCompiler $shortcode): ?string {
        return Theme::partial('shortcodes.about-section.index', compact('shortcode'));
    });

    Shortcode::setPreviewImage('about-section', Theme::asset()->url('images/home/about-section.png'));

    Shortcode::setAdminConfig('about-section', function (array $attributes): ShortcodeForm {
        return ShortcodeForm::createFromArray($attributes)
            ->withLazyLoading()
            ->add('description', TextareaField::class, TextareaFieldOption::make()->label(__('Description')))
            ->add('background_color', ColorField::class, ColorFieldOption::make()->label(__('Background color'))->defaultValue('#a8a192'))
            ->add('text_color', ColorField::class, ColorFieldOption::make()->label(__('Text color'))->defaultValue('#232922'))
            ->add('background_image', MediaImageField::class, MediaImageFieldOption::make()->label(__('Right side background image')))
            ->add('triangle_image', MediaImageField::class, MediaImageFieldOption::make()->label(__('Center triangle image')))
            ->add('logo_image', MediaImageField::class, MediaImageFieldOption::make()->label(__('Logo image')))
            ->add('overlay_text_color', ColorField::class, ColorFieldOption::make()->label(__('Overlay text color'))->defaultValue('#dacec3'))
            ->add('overlay_title_1', TextField::class, TextFieldOption::make()->label(__('Overlay title 1'))->defaultValue('Unique Perspectives'))
            ->add('overlay_title_2', TextField::class, TextFieldOption::make()->label(__('Overlay title 2'))->defaultValue('Creativity'))
            ->add('overlay_title_3', TextField::class, TextFieldOption::make()->label(__('Overlay title 3'))->defaultValue('& Excellence'));
    });

    // ============================================================
    // 3. Projects Showcase Shortcode
    // ============================================================
    Shortcode::register('projects-showcase', __('Projects Showcase'), __('Projects list with description and Mission/Vision/Values cards'), function (ShortcodeCompiler $shortcode): ?string {
        $projects = Shortcode::fields()->getTabsData(['name', 'description'], $shortcode, 'projects');
        $cards = Shortcode::fields()->getTabsData(['title', 'description', 'image'], $shortcode, 'cards');

        return Theme::partial('shortcodes.projects-showcase.index', compact('shortcode', 'projects', 'cards'));
    });

    Shortcode::setPreviewImage('projects-showcase', Theme::asset()->url('images/home/projects/project-1.png'));

    Shortcode::setAdminConfig('projects-showcase', function (array $attributes): ShortcodeForm {
        return ShortcodeForm::createFromArray($attributes)
            ->withLazyLoading()
            ->add('section_title', TextField::class, TextFieldOption::make()->label(__('Section title'))->defaultValue('Projects'))
            ->add('background_color', ColorField::class, ColorFieldOption::make()->label(__('Background color'))->defaultValue('#e6ded5'))
            ->add('projects', ShortcodeTabsField::class, ShortcodeTabsFieldOption::make()
                ->label(__('Projects'))
                ->fields([
                    'name' => ['type' => 'text', 'title' => __('Project name')],
                    'description' => ['type' => 'textarea', 'title' => __('Project description')],
                ], 'projects')
                ->attrs($attributes)
            );
    });

    // ============================================================
    // 4. Latest News Shortcode
    // ============================================================
    Shortcode::register('latest-news', __('Latest News'), __('Latest news section with dynamic articles'), function (ShortcodeCompiler $shortcode): ?string {
        $limit = (int) ($shortcode->limit ?: 3);

        $posts = Botble\Blog\Models\Post::query()
            ->wherePublished()
            ->latest()
            ->with(['slugable', 'categories.slugable'])
            ->limit($limit)
            ->get();

        return Theme::partial('shortcodes.latest-news.index', compact('shortcode', 'posts'));
    });

    Shortcode::setPreviewImage('latest-news', Theme::asset()->url('images/news/news-1.png'));

    Shortcode::setAdminConfig('latest-news', function (array $attributes): ShortcodeForm {
        return ShortcodeForm::createFromArray($attributes)
            ->withLazyLoading()
            ->add('title', TextField::class, TextFieldOption::make()->label(__('Title'))->defaultValue('Latest news'))
            ->add('background_color', ColorField::class, ColorFieldOption::make()->label(__('Background color'))->defaultValue('#e6ded5'))
            ->add('button_label', TextField::class, TextFieldOption::make()->label(__('Button label'))->defaultValue('View More'))
            ->add('button_url', TextField::class, TextFieldOption::make()->label(__('Button URL')))
            ->add('button_color', ColorField::class, ColorFieldOption::make()->label(__('Button color'))->defaultValue('#B39C75'))
            ->add('limit', TextField::class, TextFieldOption::make()->label(__('Number of articles to show'))->defaultValue('3'));
    });
});
