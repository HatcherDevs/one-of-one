@php
    Theme::layout('default');
    Theme::set('pageTitle', $category->name);
    SeoHelper::setTitle(__('One Of One | :name', ['name' => $category->name]));
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    data-parallax-background-ratio="0.5" style="background: #eae4de;">
</section>

{{-- Category Content --}}
<section class="py-1" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="g-0 px-lg-4">
            <h2 class="fw-lighter xs-fs-20 lg-fs-50" style="color: #554A41;line-height: 1.3;">
                {{ $category->name }}
            </h2>
            @if ($category->description)
                <p class="text-muted mt-2">{{ $category->description }}</p>
            @endif
        </div>
    </div>
</section>

{{-- Articles List --}}
<section class="py-5" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4">
            @if ($posts->isNotEmpty())
                @foreach ($posts as $post)
                    <div class="col-lg-4 col-md-6 col-12 mb-4">
                        <article class="card border-0 bg-transparent h-100">
                            <a href="{{ $post->url }}" class="text-decoration-none">
                                <div class="overflow-hidden mb-3">
                                    <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                                        alt="{{ $post->name }}" class="w-100"
                                        style="height: 250px; object-fit: cover; object-position: center;">
                                </div>
                                <div class="card-body p-0">
                                    <span class="text-uppercase small" style="color: #B39C75; letter-spacing: 1px;">
                                        {{ $category->name }}
                                    </span>
                                    <h5 class="fw-lighter mt-2" style="color: #554A41;">
                                        {{ $post->name }}
                                    </h5>
                                    <p class="text-muted small">{{ $post->created_at->format('M d, Y') }}</p>
                                    <p class="text-muted" style="color: #554A41 !important;">
                                        {{ Str::limit($post->description, 120) }}
                                    </p>
                                </div>
                            </a>
                        </article>
                    </div>
                @endforeach
            @else
                <div class="col-12 text-center py-5">
                    <p class="text-muted">{{ __('There is no news to display!') }}</p>
                </div>
            @endif
        </div>

        @if ($posts->hasPages())
            <div class="row g-0 px-lg-4 mt-4">
                <div class="col-12">
                    {!! $posts->withQueryString()->links() !!}
                </div>
            </div>
        @endif
    </div>
</section>
