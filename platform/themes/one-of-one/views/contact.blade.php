@php
    Theme::layout('default');
    Theme::set('pageTitle', __('Contact Us'));
    SeoHelper::setTitle(__('One Of One | Contact Us'));
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    style="background-image: url({{ Theme::asset()->url('images/contact-us/Group 253.png') }});background-size: 100% 100%;">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 text-center position-relative">
                <div class="d-flex flex-column small-screen"></div>
            </div>
        </div>
    </div>
</section>

{{-- Contact Form Section --}}
<section class="py-5" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4">
            <div class="col-12 mb-4">
                <h1 class="fw-lighter" style="color: #554A41;">{{ __('Contact Us') }}</h1>
            </div>

            <div class="col-lg-6 mb-4">
                <div class="contact-info">
                    @if ($hotline = theme_option('hotline'))
                        <div class="mb-3">
                            <h5 class="fw-lighter">{{ __('Phone') }}</h5>
                            <p><a href="tel:{{ $hotline }}" style="color: #554A41;">{{ $hotline }}</a></p>
                        </div>
                    @endif
                    @if ($email = theme_option('email'))
                        <div class="mb-3">
                            <h5 class="fw-lighter">{{ __('Email') }}</h5>
                            <p><a href="mailto:{{ $email }}" style="color: #554A41;">{{ $email }}</a></p>
                        </div>
                    @endif
                    @if ($address = theme_option('address'))
                        <div class="mb-3">
                            <h5 class="fw-lighter">{{ __('Address') }}</h5>
                            <p style="color: #554A41;">{{ $address }}</p>
                        </div>
                    @endif
                </div>
            </div>

            <div class="col-lg-6 mb-4">
                @if (is_plugin_active('contact'))
                    {!! do_shortcode('[contact-form][/contact-form]') !!}
                @else
                    <form action="{{ route('public.send.contact') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <input type="text" name="name" class="form-control"
                                placeholder="{{ __('Your Name') }}" required>
                        </div>
                        <div class="mb-3">
                            <input type="email" name="email" class="form-control"
                                placeholder="{{ __('Your Email') }}" required>
                        </div>
                        <div class="mb-3">
                            <textarea name="content" class="form-control" rows="5" placeholder="{{ __('Your Message') }}" required></textarea>
                        </div>
                        <button type="submit" class="btn text-white"
                            style="background-color: #B39C75;">{{ __('Send Message') }}</button>
                    </form>
                @endif
            </div>
        </div>
    </div>
</section>
