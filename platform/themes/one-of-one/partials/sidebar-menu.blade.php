<ul class="nav-links">
    @foreach ($menu_nodes as $key => $row)
        <li @class([
            'has-submenu' => $row->has_child,
            'current' => $row->active,
            $row->css_class,
        ])>
            @if ($row->has_child)
                <div class="projects-container">
                    <a href="{{ $row->url }}" target="{{ $row->target }}" class="projects-link">
                        {!! BaseHelper::clean($row->icon_html) !!}
                        {{ $row->title }}
                    </a>
                    <span class="projects-toggle"><i class="fas fa-chevron-down"></i></span>
                </div>
                <ul class="submenu">
                    {!! Menu::generateMenu([
                        'menu' => $menu,
                        'menu_nodes' => $row->child,
                        'view' => 'sidebar-submenu',
                    ]) !!}
                </ul>
            @else
                <a href="{{ $row->url }}" target="{{ $row->target }}">
                    {!! BaseHelper::clean($row->icon_html) !!}
                    {{ $row->title }}
                </a>
            @endif
        </li>
    @endforeach
</ul>
