@php
    $title = $shortcode->title ?? '';
    $subtitle = $shortcode->subtitle ?? '';
    $description = $shortcode->description ?? '';
    $brochure_label = $shortcode->brochure_label ?: __('Download Brochure');
    $brochure_url = $shortcode->brochure_url ?? '';
    $map_image = $shortcode->map_image ?? '';
    $hero_image = $shortcode->hero_image ?? '';
    $masterplan_title = $shortcode->masterplan_title ?: __('Masterplan');
    $masterplan_image = $shortcode->masterplan_image ?? '';
    $video_title = $shortcode->video_title ?: __('Videos');
    $gallery_images = Shortcode::fields()->getTabsData(['image'], $shortcode, 'gallery');
    $videos = Shortcode::fields()->getTabsData(['url', 'thumbnail'], $shortcode, 'videos');
@endphp

<style>
    .bridges-dual-images {
        padding-top: 16px;
        padding-bottom: 8px;
    }

    .bridges-slider-container {
        padding-right: 0 !important;
    }

    .mySwiper {
        width: 100%;
        height: 100%;
    }

    .mySwiper .swiper-slide {
        text-align: center;
        display: flex;
        justify-content: flex-start;
        align-items: center;
        width: auto;
        height: clamp(380px, 52vw, 720px);
    }

    .mySwiper .swiper-slide img {
        display: block;
        width: auto;
        height: 100%;
        object-fit: contain;
    }

    @media (max-width: 575.98px) {
        .mySwiper .swiper-slide {
            height: 300px;
        }
    }

    .videos-custom {
        padding-top: 10px;
        padding-bottom: 26px;
    }

    .videos-custom-row {
        --bs-gutter-x: 12px;
        --bs-gutter-y: 12px;
    }

    .videos-custom-row>[class*="col-"] {
        display: flex;
    }

    .video-thumb {
        position: relative;
        display: block;
        overflow: hidden;
        width: 100%;
        aspect-ratio: 16 / 8;
    }

    .video-thumb img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
    }

    .video-thumb .video-play-icon {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 48px;
        height: 48px;
        border-radius: 50%;
        background-color: rgba(255, 255, 255, 0.85);
        color: #6b625a;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        line-height: 1;
    }

    .video-modal {
        position: fixed;
        inset: 0;
        background: rgba(0, 0, 0, 0.82);
        display: none;
        align-items: center;
        justify-content: center;
        z-index: 9999;
        padding: 20px;
    }

    .video-modal.active {
        display: flex;
    }

    .video-modal-content {
        width: min(960px, 100%);
        background: #000;
        position: relative;
    }

    .video-modal-close {
        position: absolute;
        right: 10px;
        top: 8px;
        border: 0;
        background: transparent;
        color: #fff;
        font-size: 30px;
        line-height: 1;
        z-index: 2;
    }

    .video-modal-player {
        width: 100%;
        aspect-ratio: 16 / 9;
        display: block;
        border: 0;
        background: #000;
    }
</style>

{{-- Hero Parallax Section --}}
@if ($hero_image)
    <section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
        style="background-image: url({{ RvMedia::getImageUrl($hero_image) }}); background-size: cover; background-position: bottom;">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-12 text-center position-relative">
                    <div class="d-flex flex-column small-screen">
                        <div style="margin-block: auto;"
                            data-anime='{ "translateY": [30, 0], "opacity": [0,1], "duration": 400, "delay": 0, "staggervalue": 200, "easing": "easeOutQuad" }'>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif

{{-- Content Section --}}
<section class="py-5" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="row g-0 px-lg-4">
            <div class="col-md-6 mb-4">
                <h2 class="fw-lighter" style="font-size: 3rem; color: #554A41;">
                    {{ $title }}<br>
                    @if ($subtitle)
                        <p class="text-muted fs-20">{{ $subtitle }}</p>
                    @endif
                </h2>
                @if ($description)
                    <p class="small pe-4 lh-base">
                        {!! nl2br($description) !!}
                    </p>
                @endif
                @if ($brochure_url)
                    <a href="{{ $brochure_url }}" download class="d-inline-flex flex-column text-decoration-none"
                        style="color: #554A41; font-size: 14px; line-height: 1.3;">
                        <i class="bi bi-download" style="font-size: 17px;"></i>
                        <span>{{ $brochure_label }}</span>
                    </a>
                @endif
            </div>
            <div class="col-md-6 mb-4 pe-3">
                @if ($map_image)
                    <img src="{{ RvMedia::getImageUrl($map_image) }}" alt="{{ $title }} Map" class="img-fluid">
                @endif
            </div>
        </div>
    </div>
</section>

{{-- Gallery Swiper --}}
@if (!empty($gallery_images))
    <section class="bridges-dual-images" style="background-color: #eae4de;">
        <div class="container-fluid bridges-slider-container ps-3 ps-md-4 ps-lg-5">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    @foreach ($gallery_images as $img)
                        <div class="swiper-slide">
                            <img src="{{ RvMedia::getImageUrl($img['image'] ?? '') }}" alt="{{ $title }}"
                                class="img-fluid">
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

    <script>
        (function() {
            function initSwiper() {
                if (typeof Swiper !== 'undefined' && document.querySelector('.mySwiper')) {
                    new Swiper(".mySwiper", {
                        slidesPerView: "auto",
                        spaceBetween: 30,
                    });
                } else {
                    setTimeout(initSwiper, 300);
                }
            }
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', initSwiper);
            } else {
                initSwiper();
            }
        })();
    </script>
@endif

{{-- Masterplan --}}
@if ($masterplan_image)
    <section class="py-5" style="background-color: #eae4de;">
        <div class="container-fluid px-lg-5">
            <h2 class="fw-lighter" style="font-size: 3rem; color: #554A41;">
                {{ $masterplan_title }}<br>
            </h2>
            <img src="{{ RvMedia::getImageUrl($masterplan_image) }}" alt="{{ $title }} Masterplan"
                class="img-fluid w-100">
        </div>
    </section>
@endif

{{-- Videos --}}
@if (!empty($videos))
    <section class="videos-custom" style="background-color: #eae4de;">
        <div class="container-fluid px-lg-5">
            <h2 class="fw-lighter" style="font-size: 3rem; color: #554A41;">
                {{ $video_title }}<br>
            </h2>
            <div class="row videos-custom-row">
                @foreach ($videos as $video)
                    <div class="col-12 col-md-6">
                        <a href="{{ $video['url'] ?? '#' }}" class="video-thumb"
                            data-video-url="{{ $video['url'] ?? '' }}" data-video-type="video">
                            @if (!empty($video['thumbnail']))
                                <img src="{{ RvMedia::getImageUrl($video['thumbnail']) }}" alt="Video">
                            @endif
                            <span class="video-play-icon"><i class="bi bi-play-fill"></i></span>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <div class="video-modal" id="videoModal">
        <div class="video-modal-content">
            <button class="video-modal-close" id="videoModalClose" aria-label="Close video">&times;</button>
            <div id="videoModalContainer"></div>
        </div>
    </div>

    <script>
        (function() {
            function initVideoModal() {
                var modal = document.getElementById('videoModal');
                var modalClose = document.getElementById('videoModalClose');
                var modalContainer = document.getElementById('videoModalContainer');
                var videoThumbs = document.querySelectorAll('.video-thumb');
                if (!modal || !modalClose || !modalContainer) {
                    setTimeout(initVideoModal, 300);
                    return;
                }

                function closeVideoModal() {
                    modal.classList.remove('active');
                    modalContainer.innerHTML = '';
                }

                videoThumbs.forEach(function(thumb) {
                    thumb.addEventListener('click', function(e) {
                        e.preventDefault();
                        var url = this.getAttribute('data-video-url');
                        var lowerUrl = (url || '').toLowerCase();
                        var useIframe = lowerUrl.includes('youtube.com') || lowerUrl.includes(
                            'youtu.be');
                        if (useIframe) {
                            var embedUrl = url;
                            if (url.indexOf('watch?v=') !== -1) {
                                embedUrl = url.replace('watch?v=', 'embed/');
                            }
                            modalContainer.innerHTML = '<iframe class="video-modal-player" src="' +
                                embedUrl +
                                '?autoplay=1" allow="autoplay; encrypted-media" allowfullscreen></iframe>';
                        } else {
                            var video = document.createElement('video');
                            video.className = 'video-modal-player';
                            video.controls = true;
                            video.autoplay = true;
                            video.playsInline = true;
                            video.src = url;
                            modalContainer.innerHTML = '';
                            modalContainer.appendChild(video);
                        }
                        modal.classList.add('active');
                    });
                });

                modalClose.addEventListener('click', closeVideoModal);
                modal.addEventListener('click', function(e) {
                    if (e.target === modal) closeVideoModal();
                });
                document.addEventListener('keydown', function(e) {
                    if (e.key === 'Escape' && modal.classList.contains('active')) closeVideoModal();
                });
            }
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', initVideoModal);
            } else {
                initVideoModal();
            }
        })();
    </script>
@endif
