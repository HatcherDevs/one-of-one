@php
    $heading = $shortcode->heading ?: __('Have a query? Contact us.');
    $description =
        $shortcode->description ?: __('To discover more about our services, please reach out to our investment team:');
    $email = $shortcode->email ?: 'marketing@oneofone.com.eg';
    $phone = $shortcode->phone ?: '17444';
    $introText =
        $shortcode->intro_text ?:
        __('Alternatively, you may submit your inquiries using the form provided below. We will respond promptly.');
    $backgroundColor = $shortcode->background_color ?: '#EAE4DE';
@endphp

<section class="contact-section pt-5 pb-0" style="background-color: {{ $backgroundColor }};">
    <div class="container-fluid px-lg-5">
        <div class="g-0 px-lg-4">
            {{-- Heading --}}
            <h2 class="display-5 fw-semibold mb-2" style="color: #4b3c32; font-size: 32.3px;">
                {{ $heading }}
            </h2>
            <p class="mb-3 fs-22" style="color: #4b3c32;">
                {{ $description }}
            </p>

            {{-- Contact Info --}}
            <div class="row mb-2">
                <div class="col-md-6">
                    <p class="fw-bold" style="color: #4b3c32;">
                        {{ __('Email:') }}
                        <a href="mailto:{{ $email }}"
                            style="color: #4b3c32; text-decoration: none;">{{ $email }}</a>
                    </p>
                </div>
                <div class="col-md-6">
                    <p class="fw-bold" style="color: #4b3c32;">{{ __('Phone:') }} {{ $phone }}</p>
                </div>
            </div>

            {{-- Intro Text --}}
            <p class="mb-3 fs-22" style="color: #4b3c32;">
                {{ $introText }}
            </p>

            {{-- Contact Form --}}
            <form id="contactForm" method="POST" action="{{ route('public.send.contact') }}">
                @csrf
                <div class="row mb-4" style="margin-right: 20px;">
                    <div class="col-md-6">
                        <label class="form-label">{{ __('Full name') }}*</label>
                        <input type="text" name="name"
                            class="form-control border-0 border-bottom rounded-0 bg-transparent"
                            style="border-color: #4b3c323e!important;" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">{{ __('Phone number') }}*</label>
                        <input type="tel" name="phone"
                            class="form-control border-0 border-bottom rounded-0 bg-transparent"
                            style="border-color: #4b3c323e!important;" required>
                    </div>
                </div>

                <div class="row mb-4" style="margin-right: 20px;">
                    <div class="col-md-6">
                        <label class="form-label">{{ __('Email') }}*</label>
                        <input type="email" name="email"
                            class="form-control border-0 border-bottom rounded-0 bg-transparent"
                            style="border-color: #4b3c323e!important;" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">{{ __('Message') }}*</label>
                        <input type="text" name="content"
                            class="form-control border-0 border-bottom rounded-0 bg-transparent"
                            style="border-color: #4b3c323e!important;" required>
                    </div>
                </div>

                {{-- Submit Button --}}
                <div class="d-flex justify-content-end mt-4">
                    <button type="submit" class="btn fw-lighter d-flex py-2"
                        style="background-color: #4b3c32;color: #fff;width: 120px;justify-content: space-around;">
                        {{ __('Submit') }} <span class="ms-2">&#9654;</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
</section>
