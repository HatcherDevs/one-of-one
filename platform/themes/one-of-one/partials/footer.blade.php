@use(Botble\Menu\Facades\Menu)
@use(Botble\Media\Facades\RvMedia)
<footer class="pb-0 pt-3" style="background-color: #434B42;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 align-items-center">

            <!-- Logo -->
            <div class="col-lg-3 col-md-4 col-12 text-center text-md-center mb-4 mb-md-0">
                <div class="container text-md-start">
                    @php
                        $logoFooterOpt = theme_option('logo_footer');
                        $logoSrc = $logoFooterOpt
                            ? (str_starts_with($logoFooterOpt, 'themes/')
                                ? Theme::asset()->url(substr($logoFooterOpt, 7))
                                : RvMedia::url($logoFooterOpt))
                            : Theme::asset()->url('images/logo-footer.png');
                    @endphp
                    <img src="{{ $logoSrc }}" alt="{{ __('Logo') }}">
                </div>
            </div>

            <!-- Navigation Links -->
            <div class="col-lg-9 col-md-5 col-12 ps-4 mb-1 mb-md-0">

                <!-- Social Icons -->
                <div class="text-center text-md-end px-4 mb-2 mb-md-0">
                    <div class="d-flex justify-content-center justify-content-md-end gap-3">
                        @php
                            $socialLinks = \Botble\Theme\Supports\ThemeSupport::getSocialLinks();
                            // Map Tabler icons to Bootstrap Icons (used in footer)
                            $iconMap = [
                                'ti-brand-facebook' => 'bi bi-facebook',
                                'ti-brand-instagram' => 'bi bi-instagram',
                                'ti-brand-linkedin' => 'bi bi-linkedin',
                                'ti-brand-x' => 'bi bi-twitter',
                                'ti-brand-youtube' => 'bi bi-youtube',
                                'ti-brand-tiktok' => 'bi bi-tiktok',
                                'ti-facebook' => 'bi bi-facebook',
                                'ti-instagram' => 'bi bi-instagram',
                                'ti-linkedin' => 'bi bi-linkedin',
                                'ti-twitter' => 'bi bi-twitter',
                                'ti-youtube' => 'bi bi-youtube',
                            ];
                        @endphp
                        @foreach ($socialLinks as $link)
                            @php $icon = strtr($link->getIcon() ?? '', $iconMap); @endphp
                            <a href="{{ $link->getUrl() }}" target="_blank" title="{{ $link->getName() }}"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;">
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

                <ul class="nav justify-content-center justify-content-md-end flex-wrap">
                    @if ($hotline = theme_option('hotline'))
                        <li class="nav-item"><span class="nav-link text-white px-4 small"
                                style="direction: ltr;">{{ $hotline }}</span></li>
                    @endif
                    @if (Menu::isLocationHasMenu('footer-menu'))
                        {!! Menu::renderMenuLocation('footer-menu', [
                            'view' => 'footer-menu',
                        ]) !!}
                    @else
                        <li class="nav-item"><a href="{{ url('contact-us') }}"
                                class="nav-link text-white px-4 small">{{ __('Contact us') }}</a></li>
                    @endif
                </ul>

            </div>

        </div>
    </div>
</footer>
