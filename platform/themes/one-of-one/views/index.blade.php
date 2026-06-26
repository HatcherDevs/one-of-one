@php
    Theme::layout('default');
    Theme::set('pageTitle', __('Home'));
    SeoHelper::setTitle(__('One Of One | Home'));
@endphp

{{-- استخدام do_shortcode لتشغيل الشورت كودات من محتوى الصفحة --}}
@if (isset($page) && $page->content)
    {!! do_shortcode($page->content) !!}
@else
    {{-- Shortcodes افتراضية لو مفيش صفحة محددة --}}
    {!! do_shortcode(
        '[hero-banner title_1="Principle" title_2="Person" title_3="Place" text_color="#dacec3"][/hero-banner][about-section background_color="#a8a192"][/about-section][projects-showcase section_title="Projects"][/projects-showcase][latest-news title="Latest news" button_label="View More" button_url="/news-and-press"][/latest-news]',
    ) !!}
@endif
