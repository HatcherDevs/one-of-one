@php
    Theme::layout('default');
    Theme::set('pageTitle', $post->name);
    SeoHelper::setTitle(__('One Of One | :name', ['name' => $post->name]));
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    data-parallax-background-ratio="0.5" style="background: #eae4de;">
</section>

{{-- Article Details --}}
<section class="py-5" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4">
            {{-- Back Button --}}
            <div class="col-12 mb-4">
                <a href="{{ route('public.news-press') }}" class="btn btn-link text-decoration-none"
                    style="color: #B39C75;">
                    <i class="fa-solid fa-arrow-left me-2"></i> {{ __('Back to Press') }}
                </a>
            </div>

            {{-- Main Content --}}
            <div class="col-lg-8">
                <div class="mb-3">
                    <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                        alt="{{ $post->name }}" class="w-100"
                        style="max-height: 500px; object-fit: cover; object-position: top;">
                </div>

                <div class="mb-3">
                    @if ($post->categories->isNotEmpty())
                        <span class="text-uppercase small" style="color: #B39C75; letter-spacing: 1px;">
                            {{ $post->categories->first()->name }}
                        </span>
                        <span class="mx-2 text-muted">|</span>
                    @endif
                    <span class="text-muted small">{{ $post->created_at->format('M d, Y') }}</span>
                </div>

                <h2 class="fw-lighter mb-4" style="color: #554A41;">{{ $post->name }}</h2>

                <div class="ck-content" style="color: #554A41; line-height: 1.8;">
                    {!! BaseHelper::clean($post->content) !!}
                </div>

                @if ($post->tags->isNotEmpty())
                    <div class="mt-4 pt-3 border-top border-light">
                        @foreach ($post->tags as $tag)
                            <a href="{{ $tag->url }}" class="btn btn-sm me-2 mb-2"
                                style="background-color: #B39C75; color: #fff; border-radius: 0; font-weight: 300;">
                                #{{ $tag->name }}
                            </a>
                        @endforeach
                    </div>
                @endif
            </div>

            {{-- Sidebar --}}
            <div class="col-lg-4">
                <div class="ps-lg-5">
                    <h4 class="fw-lighter mb-4" style="color: #554A41;">{{ __('Other Articles') }}</h4>
                    @php $relatedPosts = get_related_posts($post->getKey(), 3); @endphp
                    @if ($relatedPosts->isNotEmpty())
                        @foreach ($relatedPosts as $relatedItem)
                            <div class="mb-3">
                                <a href="{{ $relatedItem->url }}" class="text-decoration-none">
                                    <div class="d-flex align-items-start">
                                        <img src="{{ RvMedia::getImageUrl($relatedItem->image, null, false, RvMedia::getDefaultImage()) }}"
                                            alt="{{ $relatedItem->name }}"
                                            style="width: 80px; height: 80px; object-fit: cover; object-position: center; flex-shrink: 0;">
                                        <div class="ms-3">
                                            <h6 class="fw-lighter mb-1" style="color: #554A41;">
                                                {{ $relatedItem->name }}
                                            </h6>
                                            <small
                                                class="text-muted">{{ $relatedItem->created_at->format('M d, Y') }}</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    @else
                        <p class="text-muted small">{{ __('No other articles available.') }}</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
