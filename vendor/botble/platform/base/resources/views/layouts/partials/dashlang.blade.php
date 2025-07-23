<div class="nav-item dropdown d-none d-md-flex me-2 language-switcher">
    <button class="btn  dropdown-toggle d-flex align-items-center" type="button" id="langDropdown" data-bs-toggle="dropdown" aria-expanded="false">
        @php
            $currentLang = session('dashboard_locale', 'ar');
            $langPath = base_path('lang/vendor/core/base');
            $currentLangInfo = include("$langPath/$currentLang/lang-info.php");
        @endphp
        <span class="fi fi-{{ $currentLangInfo['flag'] }} me-2"></span>
        {{-- {{ $currentLangInfo['name'] }} --}}
    </button>
    <ul class="dropdown-menu" aria-labelledby="langDropdown">
        @php
            $langDirs = array_diff(scandir($langPath), ['.', '..']);
            foreach ($langDirs as $langDir) {
                if (is_dir("$langPath/$langDir") && file_exists("$langPath/$langDir/lang-info.php")) {
                    $langInfo = include("$langPath/$langDir/lang-info.php");
        @endphp
        <li>
            <a class="dropdown-item d-flex align-items-center {{ $currentLang === $langInfo['code'] ? 'active' : '' }}" 
               href="{{ route('set.language', ['locale' => $langInfo['code']]) }}">
                <span class="fi fi-{{ $langInfo['flag'] }} me-2"></span>
                {{ $langInfo['name'] }}
            </a>
        </li>
        @php
                }
            }
        @endphp
    </ul>
</div>
