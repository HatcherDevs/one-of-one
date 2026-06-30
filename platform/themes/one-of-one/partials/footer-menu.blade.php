@foreach ($menu_nodes as $key => $row)
    <li class="nav-item @class(['current' => $row->active, $row->css_class])">
        <a href="{{ $row->url }}" target="{{ $row->target }}" class="nav-link text-white px-4 small">
            {!! BaseHelper::clean($row->icon_html) !!}
            {{ $row->title }}
        </a>
    </li>
@endforeach
