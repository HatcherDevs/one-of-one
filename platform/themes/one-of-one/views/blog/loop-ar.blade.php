@php
    Theme::layout('default');
    Theme::set('pageTitle', __('الأخبار والصحافة'));
    Theme::set('useDarkLogo', true);
    SeoHelper::setTitle(__('وان أوف وان | الأخبار والصحافة'));

    // Register news-and-press CSS
    Theme::asset()->usePath()->add('news-and-press', 'css/news-and-press.css');
@endphp

{{-- Page Title --}}
<section class="page-title-parallax-background half-section bg-dark-gray ipad-top-space-margin"
    data-parallax-background-ratio="0.5" style="background: #eae4de;">
</section>

{{-- Start Register your Interest Section --}}
<section class="py-1 news-press-body" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5">
        <div class="g-0 px-lg-4">
            <h2 class="fw-lighter xs-fs-20 lg-fs-50" style="color: #554A41;line-height: 1.3;">
                <p class="fs-20 mb-1" style="color: #232922 !important;">الأخبار</p>
                آخر المستجدات والوسائط الإعلامية
            </h2>

            {{-- Featured Article (first post) --}}
            @if ($posts->isNotEmpty())
                @php
                    $allPosts = $posts->items();
                    $featured = $allPosts[0] ?? null;
                @endphp
                @if ($featured)
                    @php
                        $featuredUrl = $featured->url;
                        // Remove /ar/ prefix if present
                        $featuredUrl = str_replace('/ar/', '/', $featuredUrl);
                    @endphp
                    <a href="{{ $featuredUrl }}" class="position-relative d-block text-decoration-none">
                        <img src="{{ RvMedia::getImageUrl($featured->image, null, false, RvMedia::getDefaultImage()) }}"
                            alt="{{ $featured->name }}" class="w-100 mb-0"
                            style="width: 100%;margin-bottom: 0px;height: 500px;object-fit: cover;object-position: center 20%;">
                        <div class="position-absolute bottom-0 w-100 p-lg-4 p-2 featured-overlay">
                            <h3 class="sm-mb-10px m-0 pb-2 xs-fs-15 fs-40 fw-semibold w-80 featured-title">
                                {{ $featured->name }}
                            </h3>
                            <p class="mb-0 xs-fs-12 fs-20 fw-lighter w-100 lh-base featured-description">
                                {{ $featured->description }}
                            </p>
                        </div>
                    </a>
                @endif
            @endif
        </div>
    </div>
</section>
{{-- End Register your Interest Section --}}

{{-- Start Latest Posts Section --}}
<section class="latest-posts-section py-1 pt-4 news-press-body" style="background-color: #eae4de;">
    <div class="container-fluid px-lg-5 pb-3">
        <div class="g-0 px-lg-4">
            <h2 class="text-muted mb-2 fs-1">أحدث المنشورات</h2>

            <div class="row g-4">
                @if ($posts->isNotEmpty())
                    @php
                        $allPosts = $posts->items();
                        $latestPosts = $allPosts;
                    @endphp
                    @forelse ($latestPosts as $post)
                        @php
                            $postUrl = $post->url;
                            // Remove /ar/ prefix if present
                            $postUrl = str_replace('/ar/', '/', $postUrl);
                        @endphp
                        <div class="col-lg-4 col-md-6">
                            <a href="{{ $postUrl }}" class="card border-0 bg-transparent">
                                <img src="{{ RvMedia::getImageUrl($post->image, null, false, RvMedia::getDefaultImage()) }}"
                                    alt="{{ $post->name }}" class="w-100 mb-3 post-image"
                                    style="height: 280px; object-fit: cover; object-position: top;">
                                <div class="text-muted small mb-1">
                                    <i class="fa-solid fa-calendar"></i>
                                    {{ $post->created_at->translatedFormat('d F Y') }}
                                </div>
                                <h5 class="text-dark xs-fs-20 fw-lighter mb-2 pt-2 post-title">
                                    {{ $post->name }}
                                </h5>
                            </a>
                            <p class="text-secondary small mb-0 lh-base post-description">
                                <a href="{{ $postUrl }}"
                                    class="post-description-link">{{ Str::limit($post->description, 150) }}</a>
                            </p>
                            <a href="{{ $postUrl }}" class="read-more-link d-block mt-1">اقرأ المزيد</a>
                        </div>
                    @empty
                        <div class="col-12 text-center py-5">
                            <p class="text-muted">{{ __('لا توجد أخبار للعرض!') }}</p>
                        </div>
                    @endforelse
                @else
                    <div class="col-12 text-center py-5">
                        <p class="text-muted">{{ __('لا توجد أخبار للعرض!') }}</p>
                    </div>
                @endif
            </div>

            {{-- Pagination (Disabled - Show all posts)
            @if ($posts->hasPages())
                <div class="pagination-style-01 mt-5 text-center">
                    {!! $posts->withQueryString()->links() !!}
                </div>
            @endif
            --}}
        </div>
    </div>
</section>
{{-- End Latest Posts Section --}}
