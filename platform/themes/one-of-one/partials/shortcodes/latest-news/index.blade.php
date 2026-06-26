@php
    $bgColor = $shortcode->background_color ?: '#e6ded5';
    $title = $shortcode->title ?: __('Latest news');
    $buttonLabel = $shortcode->button_label ?: __('View More');
    $buttonUrl = $shortcode->button_url ?: route('public.news-press');
    $buttonColor = $shortcode->button_color ?: '#B39C75';
@endphp

<section class="p-lg-8 bg-light-gray" style="background-color: {{ $bgColor }};"
    data-anime='{ "el": "childs", "translateY": [30, 0], "opacity": [0,1], "duration": 600, "delay": 0, "staggervalue": 300, "easing": "easeOutQuad" }'>
    <div class="container-fluid px-5">
        <div class="row g-0">
            <div class="col-12 mb-5 px-4">
                <h2 class="fw-400 text-dark-gray" style="font-size: 3rem;">{{ $title }}</h2>
            </div>
            <div id="home-news-container" class="row g-0">
                {{-- Articles will be loaded here dynamically via JS --}}
            </div>
            <div class="col-12 text-center mt-4" id="view-more-container" style="display: none;">
                <a href="{{ $buttonUrl }}" class="btn btn-lg text-white"
                    style="background-color: {{ $buttonColor }};border-radius: 0;padding: 7px 30px;font-size: 1rem;text-wrap-mode: nowrap;font-weight: 300;">
                    {{ $buttonLabel }} <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>
        </div>
    </div>
</section>
