@php
    $bgColor = $shortcode->background_color ?: '#e6ded5';
    $isRtl = BaseHelper::isRtlEnabled();
@endphp

@if (!empty($cards))
    <section @if ($isRtl) dir="rtl" @endif class="overflow-hidden position-relative"
        style="background-color: {{ $bgColor }};"
        data-anime='{ "el": "childs", "translateY": [30, 0], "opacity": [0,1], "duration": 600, "delay": 0, "staggervalue": 300, "easing": "easeOutQuad" }'>
        <div class="container-fluid p-0">
            <div class="col-12 p-0 m-0">
                <div class="row g-0 current_projects" style="display: flex;justify-content: space-between;">
                    @foreach ($cards as $card)
                        <div class="col-lg-4 col-md-4 col-12 card position-relative">
                            @if (!empty($card['image']))
                                <img src="{{ RvMedia::getImageUrl($card['image']) }}" class="img-fluid"
                                    alt="{{ $card['title'] ?? '' }}">
                            @endif
                            <h3 class="main-title">{{ $card['title'] ?? '' }}</h3>
                            <div class="card-overlay-custom">
                                <h3 class="overlay-title">{{ $card['title'] ?? '' }}</h3>
                                @if (!empty($card['description']))
                                    <p class="overlay-desc">{{ $card['description'] }}</p>
                                @endif
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endif
