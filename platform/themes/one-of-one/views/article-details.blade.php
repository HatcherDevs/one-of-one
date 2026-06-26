@php
    Theme::layout('default');
    Theme::set('pageTitle', __('Article Details'));
    SeoHelper::setTitle(__('One Of One | Article Details'));
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
                <div class="mb-2">
                    <img id="article-image" src="" alt="Article Image" class="w-100"
                        style="max-height: 500px; object-fit: cover;object-position: top;">
                </div>
                <div id="article-content">
                    {{-- Article content loaded via JS --}}
                </div>
            </div>

            {{-- Sidebar --}}
            <div class="col-lg-4">
                <div class="ps-lg-5">
                    <h4 class="fw-lighter mb-4" style="color: #554A41;">{{ __('Other Articles') }}</h4>
                    <div id="other-articles">
                        {{-- Other articles loaded via JS --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
