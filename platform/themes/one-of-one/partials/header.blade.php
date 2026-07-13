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
