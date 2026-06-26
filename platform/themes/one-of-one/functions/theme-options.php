<?php

use Botble\Theme\Facades\Theme;
use Botble\Theme\ThemeOption\Fields\ColorField;
use Botble\Theme\ThemeOption\Fields\MediaImageField;
use Botble\Theme\ThemeOption\Fields\SelectField;
use Botble\Theme\ThemeOption\Fields\TextField;
use Botble\Theme\ThemeOption\Fields\ToggleField;
use Botble\Theme\ThemeOption\ThemeOptionSection;

app('events')->listen(\Botble\Theme\Events\RenderingThemeOptionSettings::class, function (): void {
    ThemeOption::setSection(
        ThemeOptionSection::make('opt-text-subsection-styles')
            ->title(__('Styles'))
            ->icon('ti ti-palette')
            ->fields([
                ColorField::make()
                    ->name('primary_color')
                    ->label(__('Primary color'))
                    ->defaultValue('#dacec3'),
                ColorField::make()
                    ->name('secondary_color')
                    ->label(__('Secondary color'))
                    ->defaultValue('#434B42'),
                ColorField::make()
                    ->name('accent_color')
                    ->label(__('Accent color'))
                    ->defaultValue('#B39C75'),
                ColorField::make()
                    ->name('bg_light_color')
                    ->label(__('Background light color'))
                    ->defaultValue('#e6ded5'),
                ColorField::make()
                    ->name('bg_about_color')
                    ->label(__('About section background'))
                    ->defaultValue('#a8a192'),
                ColorField::make()
                    ->name('text_dark_color')
                    ->label(__('Text dark color'))
                    ->defaultValue('#232922'),
            ])
    )
        ->setField(
            TextField::make()
                ->name('hotline')
                ->label(__('Hotline'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            TextField::make()
                ->name('email')
                ->label(__('Email'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            TextField::make()
                ->name('address')
                ->label(__('Address'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            MediaImageField::make()
                ->sectionId('opt-text-subsection-logo')
                ->name('logo_light')
                ->label(__('Logo light'))
        )
        ->setField(
            MediaImageField::make()
                ->sectionId('opt-text-subsection-logo')
                ->name('logo_dark')
                ->label(__('Logo dark'))
        )
        ->setField(
            MediaImageField::make()
                ->sectionId('opt-text-subsection-logo')
                ->name('logo_footer')
                ->label(__('Logo footer'))
        )
        ->setField(
            TextField::make()
                ->name('project_bridges_url')
                ->label(__('Bridges project URL'))
                ->sectionId('opt-text-subsection-real-estate')
                ->helperText(__('URL for the Bridges project page'))
        )
        ->setField(
            TextField::make()
                ->name('project_grounds_url')
                ->label(__('Grounds project URL'))
                ->sectionId('opt-text-subsection-real-estate')
                ->helperText(__('URL for the Grounds project page'))
        )
        ->setField(
            ToggleField::make()
                ->name('enable_projects_menu')
                ->label(__('Enable projects menu'))
                ->sectionId('opt-text-subsection-real-estate')
                ->defaultValue(true)
        )
        ->setField(
            TextField::make()
                ->name('social_facebook')
                ->label(__('Facebook URL'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            TextField::make()
                ->name('social_instagram')
                ->label(__('Instagram URL'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            TextField::make()
                ->name('social_twitter')
                ->label(__('Twitter / X URL'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            TextField::make()
                ->name('social_tiktok')
                ->label(__('TikTok URL'))
                ->sectionId('opt-text-subsection-general')
        )
        ->setField(
            TextField::make()
                ->name('social_linkedin')
                ->label(__('LinkedIn URL'))
                ->sectionId('opt-text-subsection-general')
        );
});
