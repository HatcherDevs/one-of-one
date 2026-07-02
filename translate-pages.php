<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;
use Botble\Slug\Models\Slug;
use Botble\Language\Models\LanguageMeta;
use Illuminate\Support\Facades\DB;

// 1. Add slug for Arabic Contact Us page (ID: 18)
$arContact = Page::find(18);
if ($arContact) {
    $existingSlug = Slug::where('reference_id', 18)->where('reference_type', Page::class)->first();
    if (!$existingSlug) {
        Slug::create([
            'key' => 'contact-us',
            'reference_id' => 18,
            'reference_type' => Page::class,
            'prefix' => null,
        ]);
        echo "Added slug 'contact-us' for Arabic Contact Us page\n";
    }
    
    // Update content with Arabic shortcodes
    $arContact->update([
        'content' => '[contact-page-title title="تواصل معنا"][/contact-page-title]

[contact-info-form heading="هل لديك استفسار؟ تواصل معنا" description="لمعرفة المزيد عن خدماتنا، يمكنك التواصل مع أحد ممثلينا عبر:" email="marketing@oneofone.com.eg" phone="17444" intro_text="كما يمكنك ملء البيانات أدناه، وسنقوم بالرد عليك في أقرب وقت ممكن" background_color="#EAE4DE"]
[/contact-info-form]

[find-us-section heading="العنوان" address="Park St. East, B3, Office 3006" map_url="https://maps.google.com"]
[/find-us-section]',
    ]);
    echo "Updated Arabic Contact Us content\n";
}

// 2. Add slug for Arabic Homepage (ID: 19)
$arHome = Page::find(19);
if ($arHome) {
    $existingSlug = Slug::where('reference_id', 19)->where('reference_type', Page::class)->first();
    if (!$existingSlug) {
        Slug::create([
            'key' => 'home',
            'reference_id' => 19,
            'reference_type' => Page::class,
            'prefix' => null,
        ]);
        echo "Added slug 'home' for Arabic Homepage\n";
    }
    
    // Update content with Arabic shortcodes
    $arHome->update([
        'content' => '[hero-banner title_1="المبدأ" title_2="الإنسان" title_3="المكان" text_color="#dacec3" video_url="https://oneofone.com.eg/images/Bridges-Animation.mp4" enable_caching="yes" enable_lazy_loading="no"][/hero-banner]

[about-section description="تأسست شركة One of One للتنمية العمرانية في عام 2025 على يد فريق مؤسس يتمتع برؤية وريادة وخبرة في مجال التطوير العقاري، ومن خلال قيادة طموحة وشركاء ملتزمين، نحول الرؤية إلى واقع عبر مشاريع تضيف قيمة حقيقية للسوق العقاري المصري والمجتمع ككل. يقود تنفيذ هذه الرؤية فريق عمل متمرس أثبت كفاءته في تنفيذ مشاريع عالية الجودة ترتقي بمعايير التطوير العقاري، من خلال رؤيتنا الواعدة واهتمامنا الخاص بأدق التفاصيل" background_color="#a8a192" text_color="#232922" triangle_image="triangle-p-center.png" overlay_text_color="#dacec3" overlay_title_1="نعيد التفكير في كل التفاصيل،" overlay_title_2="ونصنع من كل مشروع" overlay_title_3="بصمة لا تُنسى" enable_caching="yes" enable_lazy_loading="no"][/about-section]

[projects-showcase section_title="المشاريع" projects_quantity="2" projects_name_1="Bridges، الشيخ زايد" projects_description_1="مشروع تجاري ومعيشي متكامل في قلب الشيخ زايد، يجمع بين الفخامة والحيوية، ويقدّم وجهة عصرية تحتضن التجزئة والمطاعم والمكاتب في بيئة نابضة بالحياة." projects_name_2="Grounds، القاهرة الجديدة" projects_description_2="مجمع عصري مستدام، يحتفي بجمال الطبيعة والإبداع المعماري، ليقدّم أسلوب حياة متوازن ينسجم فيه الإنسان مع محيطه، وتتناغم فيه الراحة مع الاستدامة في كل تفصيل."][/projects-showcase]

[latest-news title="الأخبار" button_label="رؤية المزيد" button_url="/news-and-press"][/latest-news]',
    ]);
    echo "Updated Arabic Homepage content\n";
}

// 3. Clear cache
\Illuminate\Support\Facades\Artisan::call('cache:clear');

echo "\nDone!\n";
