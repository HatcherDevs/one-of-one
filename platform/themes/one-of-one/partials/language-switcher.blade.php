@if (is_plugin_active('language'))
    @php
        $supportedLocales = Language::getSupportedLocales();
        $currentLocale = Language::getCurrentLocale();
        $languageDisplay = setting('language_display', 'all');
    @endphp

    @if ($supportedLocales && count($supportedLocales) > 1)
        <div class="language-switcher">
            @foreach ($supportedLocales as $localeCode => $properties)
                @if ($localeCode !== $currentLocale)
                    <a href="{{ route('change-language', $localeCode) }}">{{ strtoupper($localeCode) }}</a>
                @else
                    <span class="active">{{ strtoupper($localeCode) }}</span>
                @endif
                @if (!$loop->last)
                    /
                @endif
            @endforeach
        </div>
    @endif
@else
    <a href="{{ url('/') }}">EN</a> / <a href="{{ url('/ar') }}">AR</a>
@endif
