@use(Botble\Menu\Facades\Menu)
@use(Botble\Media\Facades\RvMedia)
<header>
    <!-- Sidebar -->
    <div id="sidebar" class="sidebar">
        <div class="menu-toggle menu-toggle2" id="menu-toggle2">
            <span></span>
            <span></span>
            <span></span>
        </div>

        @if (Menu::isLocationHasMenu('sidebar-menu'))
            {!! Menu::renderMenuLocation('sidebar-menu', [
                'view' => 'sidebar-menu',
            ]) !!}
        @else
            <ul class="nav-links">
                @if (theme_option('enable_projects_menu', true))
                    <li class="has-submenu">
                        <div class="projects-container">
                            <a href="{{ route('public.project') }}" class="projects-link">{{ __('Projects') }}</a>
                            <span class="projects-toggle"><i class="fas fa-chevron-down"></i></span>
                        </div>
                        <ul class="submenu">
                            @if (theme_option('project_grounds_url'))
                                <li>{{ __('East Cairo') }}<span class="project-sub"><a
                                            href="{{ theme_option('project_grounds_url', '#') }}">-
                                            {{ __('Grounds') }}</a></span></li>
                            @endif
                            @if (theme_option('project_bridges_url'))
                                <li>{{ __('West Cairo') }}<span class="project-sub"><a
                                            href="{{ theme_option('project_bridges_url', '#') }}">-
                                            {{ __('Bridges') }}</a></span></li>
                            @endif
                        </ul>
                    </li>
                @endif
                <li><a href="{{ route('public.news-press') }}">{{ __('Press') }}</a></li>
                <li><a href="{{ url('contact-us') }}">{{ __('Contact Us') }}</a></li>
            </ul>
        @endif
        <div class="social-links">
            <span>{{ __('Get in touch') }}</span>
            <div class="icons">
                @php
                    $socialLinks = \Botble\Theme\Supports\ThemeSupport::getSocialLinks();
                    // Map Tabler icons to Font Awesome (used in sidebar)
                    $iconMap = [
                        'ti-brand-facebook' => 'fab fa-facebook-f',
                        'ti-brand-instagram' => 'fab fa-instagram',
                        'ti-brand-linkedin' => 'fab fa-linkedin-in',
                        'ti-brand-x' => 'fab fa-x-twitter',
                        'ti-brand-youtube' => 'fab fa-youtube',
                        'ti-brand-tiktok' => 'fab fa-tiktok',
                        'ti-facebook' => 'fab fa-facebook-f',
                        'ti-instagram' => 'fab fa-instagram',
                        'ti-linkedin' => 'fab fa-linkedin-in',
                        'ti-twitter' => 'fab fa-x-twitter',
                        'ti-youtube' => 'fab fa-youtube',
                    ];
                @endphp
                @foreach ($socialLinks as $link)
                    @php $icon = strtr($link->getIcon() ?? '', $iconMap); @endphp
                    <a href="{{ $link->getUrl() }}" target="_blank" title="{{ $link->getName() }}">
                        @if ($link->getImage())
                            <img src="{{ RvMedia::url($link->getImage()) }}" alt="{{ $link->getName() }}"
                                style="width: 20px; height: 20px;">
                        @else
                            <i class="{{ $icon }}"></i>
                        @endif
                    </a>
                @endforeach
            </div>
        </div>
    </div>

    <!-- start navigation -->
    <nav class="navbar">
        <div class="menu-toggle" id="menu-toggle">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="logo">
            @php
                $useDarkLogo = Theme::get('useDarkLogo', false);
                $logoLightOpt = theme_option('logo_light');
                $logoDarkOpt = theme_option('logo_dark');
                $logoLight = $logoLightOpt
                    ? (str_starts_with($logoLightOpt, 'themes/')
                        ? Theme::asset()->url(substr($logoLightOpt, 7))
                        : RvMedia::url($logoLightOpt))
                    : Theme::asset()->url('images/logo.png');
                $logoDark = $logoDarkOpt
                    ? (str_starts_with($logoDarkOpt, 'themes/')
                        ? Theme::asset()->url(substr($logoDarkOpt, 7))
                        : RvMedia::url($logoDarkOpt))
                    : Theme::asset()->url('images/logo-black.png');
                $logoFile = $useDarkLogo ? $logoDark : $logoLight;
            @endphp
            <a class="navbar-brand" href="{{ BaseHelper::getHomepageUrl() }}">
                <img src="{{ $logoFile }}" data-at2x="{{ $logoFile }}" alt="" class="default-logo">
                <img src="{{ $logoFile }}" data-at2x="{{ $logoFile }}" alt="" class="alt-logo">
                <img src="{{ $logoDark }}" data-at2x="{{ $logoDark }}" alt="" class="mobile-logo">
            </a>
        </div>

        <div class="lang-switch">
            @if (is_plugin_active('language'))
                {!! Theme::partial('language-switcher') !!}
            @else
                <a href="{{ url('/') }}">EN</a> / <a href="{{ url('/ar') }}">AR</a>
            @endif
        </div>
    </nav>
</header>
