<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="One Of One Development">
    <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1"
        name="viewport" />

    <style>
        :root {
            --primary-color: {{ theme_option('primary_color', '#dacec3') }};
            --secondary-color: {{ theme_option('secondary_color', '#434B42') }};
            --accent-color: {{ theme_option('accent_color', '#B39C75') }};
            --bg-light: {{ theme_option('bg_light_color', '#e6ded5') }};
            --bg-about: {{ theme_option('bg_about_color', '#a8a192') }};
            --text-dark: {{ theme_option('text_dark_color', '#232922') }};
            --dark-gray: #554a41;
            --medium-gray: #717580;
            --extra-medium-gray: #e4e4e4;
            --light-gray: #a8a8a8;
            --very-light-gray: #f7f7f7;
            --base-color: #2946f3;
            --white: #ffffff;
            --black: #000000;
            --alt-font: "IBM Plex Sans Arabic", sans-serif;
            --primary-font: "Inter", sans-serif;
        }

        .fw-lighter {
            font-weight: 300 !important;
        }

        .fw-light {
            font-weight: 300 !important;
        }

        .fw-400 {
            font-weight: 400 !important;
        }

        .fw-500 {
            font-weight: 500 !important;
        }

        .fw-600 {
            font-weight: 600 !important;
        }

        .fw-700 {
            font-weight: 700 !important;
        }

        .fw-800 {
            font-weight: 800 !important;
        }

        .fw-bold {
            font-weight: 700 !important;
        }

        .ls-minus-2px {
            letter-spacing: -2px !important;
        }

        .ls-minus-4px {
            letter-spacing: -4px !important;
        }

        .ls-3px {
            letter-spacing: 3px !important;
        }

        .fs-70 {
            font-size: 4.375rem !important;
            line-height: 4.375rem !important;
        }

        .fs-90 {
            font-size: 5.625rem !important;
            line-height: 5.625rem !important;
        }

        .text-dark-gray {
            color: #554a41 !important;
        }

        .text-muted {
            color: #717580 !important;
        }
    </style>

    {!! Theme::header() !!}
</head>

<body {!! Theme::bodyAttributes() !!} data-mobile-nav-style="classic">
    {!! apply_filters(THEME_FRONT_BODY, null) !!}

    @yield('content')

    {!! Theme::footer() !!}
</body>

</html>
