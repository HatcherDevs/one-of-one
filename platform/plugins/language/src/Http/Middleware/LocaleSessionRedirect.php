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

        // $params = array_filter(explode('/', $request->path()));
        // $paramLocale = $params[0] ?? null;

        // if (count($params) > 0 && Language::checkLocaleInSupportedLocales($paramLocale)) {
        //     $this->updatePreviousLanguage($paramLocale);

        //     Session::put(['language' => $paramLocale]);

        //     App::setLocale($paramLocale);

        //     return $next($request);
        // }

        $locale = Session::get('language', false);

        $defaultLocale = Language::getDefaultLocale();

        // if (! empty($params) && ! Language::checkLocaleInSupportedLocales($paramLocale)) {
        //     $locale = $defaultLocale;
        // }

        if (
            empty($locale) &&
            empty($params) &&
            Language::hideDefaultLocaleInURL() &&
            Language::useAcceptLanguageHeader()
        ) {
            // When default locale is hidden and accept language header is true,
            // then compute browser language when no session has been set.
            // Once the session has been set, there is no need to negotiate language from browser again.
            $negotiator = new LanguageNegotiator(
                $defaultLocale,
                Language::getSupportedLocales(),
                $request
            );

            $locale = $negotiator->negotiateLanguage();
        }

        $this->updatePreviousLanguage($defaultLocale);

        $locale = $locale ?: $defaultLocale;


        Session::put(['language' => $locale]);


         $localeSet = $this->languageManager->setLocale($locale);

        app()->setLocale($localeSet);

        Session::put('language', $localeSet);


        App::setLocale($locale);
        Language::setLocale($locale);

        if (
            $locale
            && Language::checkLocaleInSupportedLocales($locale)
            && (! ($defaultLocale === $locale) && Language::hideDefaultLocaleInURL())
        ) {
            Session::reflash();

            $redirection = Language::getLocalizedURL($locale, null, [], false);

            return new RedirectResponse($redirection, 302, ['Vary' => 'Accept-Language']);
        }
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
