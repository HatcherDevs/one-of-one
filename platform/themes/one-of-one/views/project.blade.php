@php
    Theme::layout('default');
    Theme::set('pageTitle', __('Projects'));
    SeoHelper::setTitle(__('One Of One | Projects'));
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    style="background-image: url({{ Theme::asset()->url('images/projects/bg-header.png') }});background-size: 100% 100%;">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 text-center position-relative">
                <div class="d-flex flex-column small-screen">
                    {{-- Page title content --}}
                </div>
            </div>
        </div>
    </div>
</section>

{{-- Projects Content --}}
<section class="py-5" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4">
            <div class="col-12 mb-4">
                <h1 class="fw-lighter" style="color: #554A41;">{{ __('Our Projects') }}</h1>
            </div>

            {{-- Bridges Project --}}
            <div class="col-lg-6 mb-4">
                <div class="card border-0 bg-transparent">
                    <img src="{{ Theme::asset()->url('images/projects/bridges.png') }}" class="card-img-top"
                        alt="Bridges">
                    <div class="card-body px-0">
                        <h3 class="fw-lighter">{{ __('Bridges') }} – {{ __('Sheikh Zayed') }}</h3>
                        <p>{{ __('A prime retail and lifestyle destination in Sheikh Zayed, combining luxury, accessibility, and global appeal in one vibrant urban hub.') }}
                        </p>
                        <a href="{{ theme_option('project_bridges_url', '#') }}" class="btn"
                            style="background-color: #B39C75;color: white;">{{ __('Learn More') }}</a>
                    </div>
                </div>
            </div>

            {{-- Grounds Project --}}
            <div class="col-lg-6 mb-4">
                <div class="card border-0 bg-transparent">
                    <img src="{{ Theme::asset()->url('images/projects/grounds.png') }}" class="card-img-top"
                        alt="Grounds">
                    <div class="card-body px-0">
                        <h3 class="fw-lighter">{{ __('Grounds') }} – {{ __('New Cairo') }}</h3>
                        <p>{{ __('A sustainable, biophilic community in New Cairo blending nature and modern living through eco-conscious design and smart urban planning.') }}
                        </p>
                        <a href="{{ theme_option('project_grounds_url', '#') }}" class="btn"
                            style="background-color: #B39C75;color: white;">{{ __('Learn More') }}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
