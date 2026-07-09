@php
    $bgColor = $shortcode->background_color ?: '#a8a192';
    $textColor = $shortcode->text_color ?: '#232922';
    $overlayTextColor = $shortcode->overlay_text_color ?: '#dacec3';
    $bgImage = $shortcode->background_image;
    $triangleImage = $shortcode->triangle_image;
    $logoImage = $shortcode->logo_image;
    $description = $shortcode->description;
    $overlayTitle1 = $shortcode->overlay_title_1 ?: __('Unique Perspectives');
    $overlayTitle2 = $shortcode->overlay_title_2 ?: __('Creativity');
    $overlayTitle3 = $shortcode->overlay_title_3 ?: __('& Excellence');
    $isRtl = BaseHelper::isRtlEnabled();
@endphp

<section @if ($isRtl) dir="rtl" @endif
    class="p-0 bg-very-light-gray overflow-hidden position-relative" id="about"
    data-anime='{ "el": "childs", "translateY": [30, 0], "opacity": [0,1], "duration": 600, "delay": 0, "staggervalue": 300, "easing": "easeOutQuad" }'
    style="background-color: {{ $bgColor }};">
    <style>
        #triangle-rotating {
            transform: translate(-50%, -50%);
            transition: transform 0.8s cubic-bezier(0.22, 1, 0.36, 1);
            transform-origin: 50% 50%;
            will-change: transform;
        }
    </style>
    @if ($triangleImage)
        <img src="{{ RvMedia::getImageUrl($triangleImage) }}" alt="Triangle"
            class="position-absolute top-50 start-50 translate-middle img-fluid d-none d-xl-block"
            style="max-width: 200px; z-index: 2;">
    @endif
    <div class="container-fluid p-0">
        <div class="row justify-content-center g-0">
            <div class="col-lg-6 p-8 pb-10 pt-10 xl-p-6 md-p-8 xs-pb-15 text-center {{ $isRtl ? 'text-lg-end' : 'text-lg-start' }} appear anime-child anime-complete"
                data-anime='{ "el": "childs", "willchange": "transform", "opacity": [0, 1], "rotateY": [-90, 0], "rotateZ": [-10, 0], "translateY": [80, 0], "translateZ": [50, 0], "staggervalue": 200, "duration": 500, "delay": 300, "easing": "easeOutCirc" }'>
                <h2 class="text-dark-gray fw-600 ls-minus-2px w-80 lg-w-100 logo_about xs-mx-auto"
                    style="will-change: transform;">
                    @if ($logoImage)
                        <img src="{{ RvMedia::getImageUrl($logoImage) }}" alt="Logo" class="img-fluid">
                    @endif
                </h2>
                @if ($description)
                    <p class="w-70 lg-w-100 mb-30px"
                        style="will-change: transform;text-align: justify;color: {{ $textColor }};">
                        {{ $description }}
                    </p>
                @endif
            </div>
            <div class="col-lg-6 p-8 pb-10 position-relative pt-10 xl-p-6 md-p-8 xs-pb-15 text-center {{ $isRtl ? 'text-lg-start' : 'text-lg-start' }} appear anime-child anime-complete"
                id="about-bg-change"
                @if ($bgImage) style="background-image: url({{ RvMedia::getImageUrl($bgImage) }});background-size: cover; background-position: center;"
                @else
                    style="background-image: url({{ Theme::asset()->url('images/home/about-section.png') }});background-size: cover; background-position: center;" @endif
                data-anime='{ "el": "childs", "willchange": "transform", "opacity": [0, 1], "rotateY": [-90, 0], "rotateZ": [-10, 0], "translateY": [80, 0], "translateZ": [50, 0], "staggervalue": 200, "duration": 500, "delay": 300, "easing": "easeOutCirc" }'>
                <div class="overlay"
                    style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; background-color: rgba(0,0,0,0.3); z-index: 1;">
                </div>
                <div class="content one_one_s2"
                    style="position: relative; z-index: 2; color: {{ $overlayTextColor }}; top: 30px;">
                    <h2 class="ls-minus-2px w-70 lg-w-100  {{ $isRtl ? 'text-end' : ' fw-lighter text-start' }}"
                        style="will-change: transform;color: {{ $overlayTextColor }};">{{ $overlayTitle1 }}</h2>
                    <h2 class="ls-minus-2px w-80 lg-w-100  text-center  {{ $isRtl ? '' : 'fw-lighter' }}"
                        style="will-change: transform;color: {{ $overlayTextColor }};">{{ $overlayTitle2 }}</h2>
                    <h2 class="ls-minus-2px w-80 lg-w-100  {{ $isRtl ? 'text-start' : 'fw-lighter text-end' }}"
                        style="will-change: transform;color: {{ $overlayTextColor }};">&nbsp;{{ $overlayTitle3 }}</h2>
                </div>
            </div>
        </div>
    </div>
</section>
