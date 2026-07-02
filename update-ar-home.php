<?php
require __DIR__ . '/vendor/autoload.php';
$app = require_once __DIR__ . '/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

use Botble\Page\Models\Page;

// Arabic homepage - EXACT match with official oneofone.com.eg/index-ar.html
$arContent = <<<'HTML'
[hero-banner title_1="المبدأ" title_2="الإنسان" title_3="المكان" text_color="#dacec3" video_url="https://oneofone.com.eg/images/Bridges-Animation.mp4" enable_caching="yes" enable_lazy_loading="no"][/hero-banner]

[about-section description="تأسست شركة One of One للتنمية العمرانية في عام 2025 على يد فريق مؤسس يتمتع برؤية وريادة وخبرة في مجال التطوير العقاري، ومن خلال قيادة طموحة وشركاء ملتزمين، نحول الرؤية إلى واقع عبر مشاريع تضيف قيمة حقيقية للسوق العقاري المصري والمجتمع ككل. يقود تنفيذ هذه الرؤية فريق عمل متمرس أثبت كفاءته في تنفيذ مشاريع عالية الجودة ترتقي بمعايير التطوير العقاري، من خلال رؤيتنا الواعدة واهتمامنا الخاص بأدق التفاصيل" background_color="#a8a192" text_color="#232922" triangle_image="triangle-p-center.png" overlay_text_color="#dacec3" overlay_title_1="نعيد التفكير في كل التفاصيل،" overlay_title_2="ونصنع من كل مشروع" overlay_title_3="بصمة لا تُنسى" enable_caching="yes" enable_lazy_loading="no"][/about-section]

[projects-showcase section_title="المشاريع" background_color="#e6ded5" projects_quantity="2" projects_name_1="الشيخ زايد" projects_description_1="في قلب الشيخ زايد، وعلى امتداد محور 26 يوليو الحيوي، يمتد مشروعنا على مساحة 9.1 فدان في موقع استراتيجي فريد، ليشكل إضافة نوعية إلى أحد أكثر أحياء غرب القاهرة تطوراً ونمواً." projects_name_2="التجمع السادس" projects_description_2="مجتمع مستدام وحيوي يقع في القاهرة الجديدة يمزج بين الطبيعة ونمط الحياة العصري من خلال تصميم مستدام وتخطيط عمراني متطور."][/projects-showcase]

[mission-vision-cards background_color="#e6ded5" cards_quantity="3" cards_title_1="الرسالة" cards_description_1="تقديم حلول معمارية استثنائية تجمع بين الإبداع والجودة والاستدامة." cards_image_1="images/home/projects/project-2.png" cards_title_2="الرؤية" cards_description_2="أن نكون رواد الابتكار في مجال العقارات والتطوير العمراني في المنطقة." cards_image_2="images/home/projects/project-1.png" cards_title_3="القيم" cards_description_3="نُجسّد في أعمالنا قيم النزاهة، والابتكار، والتركيز على احتياجات العملاء، ونسعى دائمًا نحو التميز والتطور." cards_image_3="images/home/projects/project-3.png"][/mission-vision-cards]

[latest-news title="الأخبار" button_label="رؤية المزيد" button_url="/news-and-press"][/latest-news]
HTML;

$arPage = Page::find(19);
if ($arPage) {
    $arPage->content = $arContent;
    $arPage->save();
    echo "✅ Arabic homepage (ID: 19) updated!\n";
    echo "\n=== الفروقات عن السابق ===\n";
    echo "المشاريع:\n";
    echo '  "Bridges، الشيخ زايد" ← "الشيخ زايد"' . "\n";
    echo '  "Grounds، القاهرة الجديدة" ← "التجمع السادس"' . "\n";
    echo '  الوصف متطابق مع index-ar.html' . "\n";
}
