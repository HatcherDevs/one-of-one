@php
    $bgColor = $shortcode->background_color ?: '#e6ded5';
    $sectionTitle = $shortcode->section_title ?: __('Projects');
@endphp

<section class="p-lg-8 overflow-hidden position-relative" style="background-color: {{ $bgColor }};"
    id="current_projects"
    data-anime='{ "el": "childs", "translateY": [30, 0], "opacity": [0,1], "duration": 600, "delay": 0, "staggervalue": 300, "easing": "easeOutQuad" }'>
    <div class="container-fluid p-0">
        <div class="row g-0 align-items-center">
            <div class="col-lg-12 p-8 pb-10 pt-10 xl-p-6 md-p-8 text-start text-lg-start">
                <div class="row">
                    <div class="col-md-4">
                        <h2 class="fw12lighter text-dark-gray fw-400" style="font-size: 3rem;">{{ $sectionTitle }}</h2>
                    </div>
                    <div class="col-md-8">
                        @if (!empty($projects))
                            @foreach ($projects as $project)
                                <h5 class="fw-lighter text-dark-gray mb-2">{{ $project['name'] ?? '' }}</h5>
                                @if (!empty($project['description']))
                                    <p class="text-muted">{{ $project['description'] }}</p>
                                @endif
                                @if (!$loop->last)
                                    <div class="mt-4"></div>
                                @endif
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
