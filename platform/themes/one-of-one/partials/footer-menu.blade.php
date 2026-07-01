@php
    $currentLocaleCode = is_plugin_active('language')
        ? \Botble\Language\Facades\Language::getCurrentLocaleCode()
        : null;
    $filteredNodes = $menu_nodes;
    if ($currentLocaleCode) {
        $filteredNodes = $menu_nodes->filter(function ($node) use ($currentLocaleCode) {
            $meta = \Botble\Language\Models\LanguageMeta::where('reference_id', $node->id)
                ->where('reference_type', \Botble\Menu\Models\MenuNode::class)
                ->first();
            return !$meta || $meta->lang_meta_code === $currentLocaleCode;
        });
    }
@endphp
@foreach ($filteredNodes as $key => $row)
    <li class="nav-item @class(['current' => $row->active, $row->css_class])">
        <a href="{{ $row->url }}" target="{{ $row->target }}" class="nav-link text-white px-4 small">
            {!! BaseHelper::clean($row->icon_html) !!}
            {{ $row->title }}
        </a>
    </li>
@endforeach
