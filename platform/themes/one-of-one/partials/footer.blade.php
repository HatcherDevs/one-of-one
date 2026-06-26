<footer class="pb-0 pt-3" style="background-color: #434B42;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 align-items-center">

            <!-- Logo -->
            <div class="col-lg-3 col-md-4 col-12 text-center text-md-center mb-4 mb-md-0">
                <div class="container text-md-start">
                    <img src="{{ Theme::asset()->url('images/logo-footer.png') }}" alt="{{ __('Logo') }}">
                </div>
            </div>

            <!-- Navigation Links -->
            <div class="col-lg-9 col-md-5 col-12 ps-4 mb-1 mb-md-0">

                <!-- Social Icons -->
                <div class="text-center text-md-end px-4 mb-2 mb-md-0">
                    <div class="d-flex justify-content-center justify-content-md-end gap-3">
                        @if ($facebook = theme_option('social_facebook'))
                            <a href="{{ $facebook }}" target="_blank"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;"><i
                                    class="bi bi-facebook"></i></a>
                        @endif
                        @if ($instagram = theme_option('social_instagram'))
                            <a href="{{ $instagram }}" target="_blank"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;"><i
                                    class="bi bi-instagram"></i></a>
                        @endif
                        @if ($linkedin = theme_option('social_linkedin'))
                            <a href="{{ $linkedin }}" target="_blank"
                                class="text-tranpirant rounded-circle bg-white" style="padding: 4px 10px;"><i
                                    class="bi bi-linkedin"></i></a>
                        @endif
                    </div>
                </div>

                <ul class="nav justify-content-center justify-content-md-end flex-wrap">
                    @if ($hotline = theme_option('hotline'))
                        <li class="nav-item"><span class="nav-link text-white px-4 small"
                                style="direction: ltr;">{{ $hotline }}</span></li>
                    @endif
                    <li class="nav-item"><a href="{{ route('public.contact') }}"
                            class="nav-link text-white px-4 small">{{ __('Contact us') }}</a></li>
                </ul>

            </div>

        </div>
    </div>
</footer>
