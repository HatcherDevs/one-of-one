@php
    $currentLocaleCode = is_plugin_active('language')
        ? \Botble\Language\Facades\Language::getCurrentLocaleCode()
        : null;
    $filteredNodes = $menu_nodes;
    if ($currentLocaleCode) {
        $filteredNodes = $menu_nodes->filter(function ($node) use ($currentLocaleCode) {
            $meta = \Botble\Language\Models\LanguageMeta::where('reference_id', $node->id)
                ->where('reference_type', \Botble\Menu\Models\MenuNode::class)
                ->first();
            return !$meta || $meta->lang_meta_code === $currentLocaleCode;
        });
    }
@endphp
<ul class="nav-links">
    @foreach ($filteredNodes as $key => $row)
        <li @class([
            'has-submenu' => $row->has_child,
            'current' => $row->active,
            $row->css_class,
        ])>
            @if ($row->has_child)
                <div class="projects-container">
                    <a href="{{ $row->url }}" target="{{ $row->target }}" class="projects-link">
                        {!! BaseHelper::clean($row->icon_html) !!}
                        {{ $row->title }}
                    </a>
                    <span class="projects-toggle"><i class="fas fa-chevron-down"></i></span>
                </div>
                <ul class="submenu">
                    {!! Menu::generateMenu([
                        'menu' => $menu,
                        'menu_nodes' => $row->child,
                        'view' => 'sidebar-submenu',
                    ]) !!}
                </ul>
            @else
                <a href="{{ $row->url }}" target="{{ $row->target }}">
                    {!! BaseHelper::clean($row->icon_html) !!}
                    {{ $row->title }}
                </a>
            @endif
        </li>
    @endforeach
</ul>
<div class="social-links">
    <span>{{ __('Get in touch') }}</span>
    <div class="icons">
        @if (theme_option('social_facebook'))
            <a href="{{ theme_option('social_facebook') }}" target="_blank" title="Facebook">
                <i class="fab fa-facebook-f"></i>
            </a>
        @endif
        @if (theme_option('social_instagram'))
            <a href="{{ theme_option('social_instagram') }}" target="_blank" title="Instagram">
                <i class="fab fa-instagram"></i>
            </a>
        @endif
        @if (theme_option('social_twitter'))
            <a href="{{ theme_option('social_twitter') }}" target="_blank" title="X">
                <i class="fab fa-x-twitter"></i>
            </a>
        @endif
        @if (theme_option('social_tiktok'))
            <a href="{{ theme_option('social_tiktok') }}" target="_blank" title="TikTok">
                <i class="fab fa-tiktok"></i>
            </a>
        @endif
        @if (theme_option('social_linkedin'))
            <a href="{{ theme_option('social_linkedin') }}" target="_blank" title="LinkedIn">
                <i class="fab fa-linkedin-in"></i>
            </a>
        @endif
    </div>
</div>
