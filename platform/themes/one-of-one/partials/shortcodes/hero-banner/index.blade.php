@php
    $videoUrl = $shortcode->video_url;
    $textColor = $shortcode->text_color ?: '#dacec3';
    $title1 = $shortcode->title_1 ?: __('Principle');
    $title2 = $shortcode->title_2 ?: __('Person');
    $title3 = $shortcode->title_3 ?: __('Place');
@endphp

<section id="home" class="full-screen ipad-top-space-margin position-relative md-h-600px sm-h-200px"
    data-parallax-background-ratio="0.5">
    @if ($videoUrl)
        <video autoplay loop muted playsinline class="bg-video"
            style="position:absolute;top:0;left:0;width:100%;height:100%;object-fit:cover;z-index:-10;">
            <source src="{{ $videoUrl }}" type="video/mp4">
        </video>
    @endif

    <div class="container h-100 d-none">
        <div class="row align-items-center justify-content-center h-100">
            <div class="col-lg-9 col-md-12 text-center"
                data-anime='{ "el": "childs", "translateY": [30, 0], "opacity": [0,1], "duration": 600, "delay": 0, "staggervalue": 300, "easing": "easeOutQuad" }'>
                <h1 class="fs-70 md-fs-60 ls-minus-4px mb-0 md-mb-20px text-shadow-double-large xs-fs-60 xs-ls-minus-2px fw-lighter"
                    style="color: {{ $textColor }};">{{ $title1 }},</h1>
                <h1 class="fs-70 md-fs-60 ls-minus-4px mb-35px md-mb-20px text-shadow-double-large xs-fs-60 xs-ls-minus-2px fw-lighter mr-xs-0"
                    style="margin-right: 450px;color: {{ $textColor }};">{{ $title2 }},</h1>
                <h1 class="fs-70 md-fs-60 ls-minus-4px mb-0 md-mb-20px text-shadow-double-large xs-fs-60 xs-ls-minus-2px fw-lighter"
                    style="margin-left: 40px;color: {{ $textColor }};">&amp; {{ $title3 }}</h1>
            </div>
        </div>
    </div>
</section>
