@php
    Theme::layout('default');
    Theme::set('pageTitle', $post->name);
    SeoHelper::setTitle(__('One Of One | :name', ['name' => $post->name]));
    $isRtl = BaseHelper::isRtlEnabled();
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    data-parallax-background-ratio="0.5" style="background: #eae4de;">
</section>

{{-- Article Details --}}
<section class="py-5" style="background-color: #eae4de;" @if ($isRtl) dir="rtl" @endif>
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4">
            {{-- Back Button --}}
            <div class="col-12 mb-4">
                <a href="{{ route('public.news-press') }}" class="btn btn-link text-decoration-none"
                    style="color: #B39C75;">
                    <i class="fa-solid fa-arrow-{{ $isRtl ? 'right' : 'left' }} me-2"></i> {{ __('Back to Press') }}
                </a>
            </div>

            {{-- Main Content --}}
            <div class="col-lg-8">
                {{-- Article Image --}}
                <div class="mb-2">
                    <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                        alt="{{ $post->name }}" class="w-100"
                        style="max-height: 500px; object-fit: cover; object-position: top;">
                </div>

                {{-- Article Meta --}}
                <div class="mb-3">
                    <span class="text-muted small">
                        <i class="fa-solid fa-calendar me-2"></i>
                        <span>{{ $post->created_at->format('F d, Y') }}</span>
                    </span>
                    @if ($post->categories->isNotEmpty())
                        <span class="text-muted small ms-4">
                            <i class="fa-solid fa-newspaper me-2"></i>
                            <span>{{ $post->categories->first()->name }}</span>
                        </span>
                    @endif
                </div>

                {{-- Article Title --}}
                <h1 class="fw-lighter mb-4"
                    style="color: #554A41; font-size: 3rem; font-weight: 400 !important; line-height: 1.3;">
                    {{ $post->name }}
                </h1>

                {{-- Article Content --}}
                <div class="article-content" style="color: #554A41; line-height: 1.8; font-size: 18px;">
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
            <div class="col-lg-4 {{ $isRtl ? 'pe-lg-5' : 'ps-lg-5' }} mt-lg-0">
                {{-- Newsletter Form --}}
                <div class="text-white p-4 mb-4" style="background-color: #4a5147;">
                    <h6 class="mb-3 fs-30">{{ __('Stay updated') }}</h6>
                    <p class="fs-18 fw-lighter">
                        {{ __('Sign up for our newsletter to get the latest news and offers.') }}</p>
                    <form action="{{ route('public.newsletter.subscribe') }}" method="POST" id="newsletter-form">
                        @csrf
                        <input type="email" name="email" class="form-control mb-3"
                            placeholder="{{ __('Add your email') }}" style="border-radius: 0;" required>
                        <button type="submit" class="btn d-flex justify-content-between align-items-center"
                            style="background-color: #b39c75; color: white; border-radius: 0; {{ $isRtl ? 'margin-right' : 'margin-left' }}: auto; width: 120px;">
                            {{ __('Submit') }} <span
                                style="font-size: 1.2rem;">{{ $isRtl ? '&#9664;' : '&#9654;' }}</span>
                        </button>
                    </form>
                    <div id="newsletter-message" class="mt-2" style="display: none;"></div>
                    <p class="small mt-3 lh-base" style="font-size: 11px;">
                        {{ __('By signing up for our mailers, you are agreeing to receive news and information from One of One Developments.') }}
                        <a href="#" class="text-white text-decoration-underline">{{ __('Click here') }}</a>
                        {{ __('to visit our privacy policy. Easy unsubscribe links are provided in every mail.') }}
                    </p>
                </div>

                {{-- Social Links --}}
                <div class="p-4" style="background-color: #fff;">
                    <p class="text-dark-gray mb-2 fw-bold">{{ __('Keep in touch') }}</p>
                    <p class="text-muted mb-3 small">{{ __("Let's connect") }}</p>
                    <div class="d-flex gap-3">
                        @php
                            $socialPlatforms = [
                                'facebook' => ['icon' => 'fa-square-facebook', 'option' => 'social_facebook'],
                                'instagram' => ['icon' => 'fa-square-instagram', 'option' => 'social_instagram'],
                                'twitter' => ['icon' => 'fa-square-x-twitter', 'option' => 'social_twitter'],
                                'tiktok' => ['icon' => 'fa-tiktok', 'option' => 'social_tiktok'],
                                'linkedin' => ['icon' => 'fa-linkedin', 'option' => 'social_linkedin'],
                            ];
                        @endphp
                        @foreach ($socialPlatforms as $platform)
                            @php $url = theme_option($platform['option']); @endphp
                            @if ($url)
                                <a href="{{ $url }}" target="_blank" style="color: #B39C75;">
                                    <i class="fa-brands fs-30 {{ $platform['icon'] }}"></i>
                                </a>
                            @endif
                        @endforeach
                    </div>
                </div>

                {{-- Related Articles --}}
                <div class="mt-4">
                    <h5 class="mb-3" style="color: #554A41; font-size: 2rem; font-weight: 500;">
                        {{ __('Related Articles') }}</h5>
                    @php $relatedPosts = get_related_posts($post->getKey(), 3); @endphp
                    @if ($relatedPosts->isNotEmpty())
                        @foreach ($relatedPosts as $relatedItem)
                            <div class="mb-3 pb-3" style="border-bottom: 1px solid #ddd;">
                                <a href="{{ $relatedItem->url }}" class="text-decoration-none">
                                    <img src="{{ RvMedia::getImageUrl($relatedItem->image, null, false, RvMedia::getDefaultImage()) }}"
                                        alt="{{ $relatedItem->name }}" class="w-100 mb-2"
                                        style="height: 150px; object-fit: cover; object-position: top;">
                                    <h6 class="fw-lighter mb-1" style="color: #554A41; font-size: 17px;">
                                        {{ $relatedItem->name }}
                                    </h6>
                                    <p class="text-muted small mb-0">
                                        <i class="fa-solid fa-calendar me-1"></i>
                                        {{ $relatedItem->created_at->format('F d, Y') }}
                                    </p>
                                </a>
                            </div>
                        @endforeach
                    @else
                        <p class="text-muted small">{{ __('No related articles available.') }}</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
