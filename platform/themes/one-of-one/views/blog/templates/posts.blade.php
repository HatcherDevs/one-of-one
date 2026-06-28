@if ($posts->isNotEmpty())
    <div class="row g-0">
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
                            @if ($post->categories->isNotEmpty())
                                <span class="text-uppercase small" style="color: #B39C75; letter-spacing: 1px;">
                                    {{ $post->categories->first()->name }}
                                </span>
                            @endif
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
    </div>
    @if ($posts->hasPages())
        <div class="row mt-4">
            <div class="col-12">
                {!! $posts->withQueryString()->links() !!}
            </div>
        </div>
    @endif
@endif
