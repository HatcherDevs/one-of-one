<?php

namespace Botble\Language\Http\Middleware;

use Botble\Language\Facades\Language;
use Botble\Language\Http\Middleware\LaravelLocalizationMiddlewareBase;
use Botble\Language\LanguageManager;
use Botble\Language\LanguageNegotiator;
use Closure;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

class LocaleSessionRedirect extends LaravelLocalizationMiddlewareBase
{

        protected LanguageManager $languageManager;

    public function __construct(LanguageManager $languageManager)
    {
        $this->languageManager = $languageManager;
    }

    public function handle(Request $request, Closure $next)
    {
        // If the URL of the request is in exceptions.
        if ($this->shouldIgnore($request)) {
            return $next($request);
        }

        $locale = Session::get('language', false);
        $defaultLocale = Language::getDefaultLocale();

        if (! $locale) {
            $locale = $defaultLocale;
        }

        Session::put(['language' => $locale]);
        App::setLocale($locale);
        Language::setLocale($locale);

        return $next($request);
    }

    protected function updatePreviousLanguage(string $language): void
    {
        if (Session::has('language')
            && ($sessionLanguage = Session::get('language')) !== $language) {
            Session::put(['previous_language' => $sessionLanguage]);
        }
    }
}
