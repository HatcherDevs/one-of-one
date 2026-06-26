@extends(Theme::getThemeNamespace('layouts.base'))

@section('content')
    {!! apply_filters('theme_front_header_content', null) !!}

    {!! Theme::partial('header') !!}

    {!! Theme::content() !!}

    {!! Theme::partial('footer') !!}
@endsection
