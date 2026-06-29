@php
    $heading = $shortcode->heading ?: __('Find us at');
    $address = $shortcode->address ?: 'Park St. East, B3, Office 3006';
    $mapUrl = $shortcode->map_url ?: 'https://maps.google.com';
@endphp

<section class="contact-section" style="background-color: #EAE4DE;overflow-x: hidden;">
    <div class="p-0">
        <div class="container-fluid px-lg-5 g-0">
            <div class="px-lg-4">
                <h2 class="display-5 fw-semibold" style="color: #4b3c32; font-size: 32.3px;">{{ $heading }}</h2>
                <p class="mb-4 fs-22 fw-lighter" style="color: #4b3c32;">{{ $address }}</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-10">
                <img class="w-100" src="{{ Theme::asset()->url('images/contact-us/map.png') }}" alt="Map">
            </div>
            <div class="col-md-2 d-flex align-items-end justify-content-between">
                <a class="btn fw-lighter fs-22" href="{{ $mapUrl }}" target="_blank" style="color: #4b3c32;">
                    <i class="fa-solid fs-30 fa-maximize"></i>
                    {{ __('Open in maps') }}
                </a>
            </div>
        </div>
    </div>
</section>
