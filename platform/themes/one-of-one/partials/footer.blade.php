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
                        @if (theme_option('footer_social_facebook'))
                            <a href="{{ theme_option('footer_social_facebook') }}" target="_blank" title="Facebook"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;">
                                <i class="bi bi-facebook"></i>
                            </a>
                        @endif
                        @if (theme_option('footer_social_instagram'))
                            <a href="{{ theme_option('footer_social_instagram') }}" target="_blank" title="Instagram"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;">
                                <i class="bi bi-instagram"></i>
                            </a>
                        @endif
                        @if (theme_option('footer_social_twitter'))
                            <a href="{{ theme_option('footer_social_twitter') }}" target="_blank" title="X"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;">
                                <i class="bi bi-twitter"></i>
                            </a>
                        @endif
                        @if (theme_option('footer_social_tiktok'))
                            <a href="{{ theme_option('footer_social_tiktok') }}" target="_blank" title="TikTok"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;">
                                <i class="bi bi-tiktok"></i>
                            </a>
                        @endif
                        @if (theme_option('footer_social_linkedin'))
                            <a href="{{ theme_option('footer_social_linkedin') }}" target="_blank" title="LinkedIn"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;">
                                <i class="bi bi-linkedin"></i>
                            </a>
                        @endif
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
