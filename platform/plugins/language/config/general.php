<?php

use Botble\Blog\Models\Post;
use Botble\Menu\Models\Menu;
use Botble\Menu\Models\MenuNode;
use Botble\Page\Models\Page;

return [
    'supported' => [
        Page::class,
        Menu::class,
        MenuNode::class,
        Post::class,
    ],
];
