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
            <div class="row g-0">
                @if (!empty($posts) && $posts->isNotEmpty())
                    @foreach ($posts as $post)
                        <div class="col-lg-4 col-md-6 col-12 mb-4 px-4">
                            <article class="card border-0 bg-transparent h-100">
                                <a href="{{ $post->url }}" class="text-decoration-none">
                                    <div class="overflow-hidden mb-3">
                                        <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                                            alt="{{ $post->name }}" class="w-100"
                                            style="height: 220px; object-fit: cover; object-position: center;">
                                    </div>
                                    <div class="card-body p-0">
                                        @if ($post->categories->isNotEmpty())
                                            <span class="text-uppercase small"
                                                style="color: #B39C75; letter-spacing: 1px;">
                                                {{ $post->categories->first()->name }}
                                            </span>
                                        @endif
                                        <h5 class="fw-lighter mt-2" style="color: #554A41;">
                                            {{ $post->name }}
                                        </h5>
                                        <p class="text-muted small">{{ $post->created_at->format('M d, Y') }}</p>
                                        <p class="text-muted" style="color: #554A41 !important;">
                                            {{ Str::limit($post->description, 100) }}
                                        </p>
                                    </div>
                                </a>
                            </article>
                        </div>
                    @endforeach
                @else
                    <div class="col-12 text-center py-5 px-4">
                        <p class="text-muted">{{ __('No news articles available.') }}</p>
                    </div>
                @endif
            </div>
            <div class="col-12 text-center mt-4" id="view-more-container">
                <a href="{{ $buttonUrl }}" class="btn btn-lg text-white"
                    style="background-color: {{ $buttonColor }};border-radius: 0;padding: 7px 30px;font-size: 1rem;text-wrap-mode: nowrap;font-weight: 300;">
                    {{ $buttonLabel }} <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>
        </div>
    </div>
</section>
