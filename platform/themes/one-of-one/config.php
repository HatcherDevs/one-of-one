<?php

use Botble\Base\Facades\BaseHelper;
use Botble\Shortcode\View\View;
use Botble\Theme\Theme;

return [

    'inherit' => null,

    'events' => [

        'beforeRenderTheme' => function (Theme $theme): void {
            $version = get_cms_version() . '.2';

            // Google Fonts
            $theme->asset()->add('google-fonts-plus-jakarta', 'https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap');
            $theme->asset()->add('google-fonts-inter', 'https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600;700;800;900&display=swap');
            $theme->asset()->add('google-fonts-open-sans', 'https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap');
            $theme->asset()->add('google-fonts-ibm-plex-sans-arabic', 'https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+Arabic:wght@100;200;300;400;500;600;700&display=swap');

            // CSS
            $theme->asset()->usePath()->add('vendors', 'css/vendors.min.css');
            $theme->asset()->usePath()->add('icon', 'css/icon.min.css');
            $theme->asset()->usePath()->add('barber', 'css/barber.css');

            if (BaseHelper::isRtlEnabled()) {
                $theme->asset()->usePath()->add('style', 'css/style-ar.css', version: $version);
            } else {
                $theme->asset()->usePath()->add('style', 'css/style.css', version: $version);
            }

            $theme->asset()->usePath()->add('responsive', 'css/responsive.css', version: $version);

            // Footer JS
            $theme->asset()->container('footer')->usePath()->add('jquery', 'js/jquery.js');
            $theme->asset()->container('footer')->usePath()->add('vendors', 'js/vendors.min.js');
            $theme->asset()->container('footer')->usePath()->add('articles-data', 'js/articles-data.js');
            $theme->asset()->container('footer')->usePath()->add('main', 'js/main.js', version: $version);

            if (function_exists('shortcode')) {
                $theme->composer(['page'], function (View $view): void {
                    $view->withShortcodes();
                });
            }
        },
    ],
];
