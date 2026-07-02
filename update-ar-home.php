<?php

require __DIR__ . '/vendor/autoload.php';

$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;

// Update Arabic Homepage (ID: 19)
$arHomepage = Page::find(19);
if (!$arHomepage) {
    echo "Arabic homepage not found!\n";
    exit;
}

$arContent = '<shortcode>[hero-banner title_1="المبدأ" title_2="الإنسان" title_3="المكان" text_color="#dacec3" video_url="https://oneofone.com.eg/images/Bridges-Animation.mp4" enable_caching="yes" enable_lazy_loading="no"][/hero-banner]</shortcode><shortcode>[about-section description="تأسست شركة One of One للتنمية العمرانية في عام 2025 على يد فريق مؤسس يتمتع برؤية وريادة وخبرة في مجال التطوير العقاري، ومن خلال قيادة طموحة وشركاء ملتزمين، نحول الرؤية إلى واقع عبر مشاريع تضيف قيمة حقيقية للسوق العقاري المصري والمجتمع ككل. يقود تنفيذ هذه الرؤية فريق عمل متمرس أثبت كفاءته في تنفيذ مشاريع عالية الجودة ترتقي بمعايير التطوير العقاري، من خلال رؤيتنا الواعدة واهتمامنا الخاص بأدق التفاصيل" background_color="#a8a192" text_color="#232922" triangle_image="triangle-p-center.png" overlay_text_color="#dacec3" overlay_title_1="رؤى فريدة" overlay_title_2="إبداع" overlay_title_3="وتميز" enable_caching="yes" enable_lazy_loading="no"][/about-section]</shortcode><shortcode>[projects-showcase section_title="المشاريع" projects_quantity="2" projects_name_1="Bridges، الشيخ زايد" projects_description_1="مشروع تجاري ومعيشي متكامل في قلب الشيخ زايد، يجمع بين الفخامة والحيوية، ويقدّم وجهة عصرية تحتضن التجزئة والمطاعم والمكاتب في بيئة نابضة بالحياة." projects_name_2="Grounds، القاهرة الجديدة" projects_description_2="مجمع عصري مستدام، يحتفي بجمال الطبيعة والإبداع المعماري، ليقدّم أسلوب حياة متوازن ينسجم فيه الإنسان مع محيطه، وتتناغم فيه الراحة مع الاستدامة في كل تفصيل."][/projects-showcase]</shortcode><shortcode>[latest-news title="الأخبار" button_label="رؤية المزيد" button_url="/news-and-press"][/latest-news]</shortcode>';

$arHomepage->update(['content' => $arContent]);

echo "Updated Arabic Homepage content!\n";

// Verify
$updated = Page::find(19);
echo "Name: {$updated->name}\n";
echo "Content length: " . strlen($updated->content) . "\n";
