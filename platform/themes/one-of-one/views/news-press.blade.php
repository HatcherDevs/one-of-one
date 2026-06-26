@php
    Theme::layout('default');
    Theme::set('pageTitle', __('Press'));
    SeoHelper::setTitle(__('One Of One | Press'));
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    data-parallax-background-ratio="0.5" style="background: #eae4de;">
</section>

{{-- Press Content --}}
<section class="py-1" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="g-0 px-lg-4">
            <h2 class="fw-lighter xs-fs-20 lg-fs-50" style="color: #554A41;line-height: 1.3;">
                {{ __('News & Press') }}
            </h2>
        </div>
    </div>
</section>

{{-- Articles List --}}
<section class="py-5" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4" id="articles-container">
            {{-- Articles will be loaded here dynamically via JS --}}
        </div>
    </div>
</section>
