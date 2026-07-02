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
                        <div class="col-lg-4 col-md-6 col-12 px-4 mb-4">
                            <div class="card border-0 bg-transparent">
                                <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                                    class="card-img-top rounded" alt="{{ $post->name }}"
                                    style="height: 280px; object-fit: cover; object-position: top;"
                                    onerror="this.src='{{ Theme::asset()->url('images/home/news/news-' . ($loop->index + 1) . '.png') }}'">
                                <div class="card-body px-0">
                                    <p class="mb-1 small text-muted">
                                        <i class="bi bi-calendar3 me-2"></i> {{ $post->created_at->format('M d, Y') }}
                                    </p>
                                    <h5 class="card-title text-dark-gray fw-normal sm-fs-22">{{ $post->name }}</h5>
                                    <p class="card-text text-muted small lh-sm">
                                        {{ Str::limit(strip_tags($post->description), 150) }}...
                                        <a href="{{ $post->url }}" class="text-decoration-none fw-semibold"
                                            style="color: #B39C75;">{{ __('Read more') }}</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @else
                    <div class="col-12 text-center py-5 px-4">
                        <p class="text-muted">{{ __('No news articles available.') }}</p>
                    </div>
                @endif
            </div>
            <div class="col-12 text-center mt-4">
                <a href="{{ $buttonUrl }}" class="btn btn-lg text-white"
                    style="background-color: {{ $buttonColor }};border-radius: 0;padding: 7px 30px;font-size: 1rem;text-wrap-mode: nowrap;font-weight: 300;">
                    {{ $buttonLabel }} <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
            </div>
        </div>
    </div>
</section>
