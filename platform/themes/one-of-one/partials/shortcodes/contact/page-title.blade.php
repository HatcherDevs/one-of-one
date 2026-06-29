@php
    Theme::asset()->usePath()->add('contact', 'css/contact.css');
    $image = $shortcode->image
        ? RvMedia::url($shortcode->image)
        : Theme::asset()->url('images/contact-us/Group 253.png');
    $title = $shortcode->title ?: __('Get in Touch');
@endphp

<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    style="background-image: url('{{ $image }}'); background-size: 100% 100%; background-repeat: no-repeat;">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 text-center position-relative">
                <div class="d-flex flex-column small-screen">
                    <div style="margin-block: auto;">
                        <h1 class="text-white mb-0 text-shadow-extra-large fw-lighter ls-minus-1px"
                            style="font-size: 43.75px;">{{ $title }}</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
