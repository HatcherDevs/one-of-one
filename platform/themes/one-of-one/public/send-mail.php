<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header('Content-Type: text/html; charset=utf-8');

require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/src/Exception.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $mail = new PHPMailer(true);
    try {
        // إعدادات SMTP جيميل
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'oneofone.smtp@gmail.com';
        $mail->Password = 'ngyg necx gxnd exlx';
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;
        $mail->CharSet = 'UTF-8';

        // بيانات المرسل إليه
        $mail->setFrom('oneofone.smtp@gmail.com', 'One Of One Website');
        $mail->addAddress('marketing@oneofone.com.eg');

        // استقبال بيانات الفورم
        $name = isset($_POST['name']) ? $_POST['name'] : '';
        $phone = isset($_POST['phone']) ? $_POST['phone'] : '';
        $email = isset($_POST['email']) ? $_POST['email'] : '';
        $message = isset($_POST['message']) ? $_POST['message'] : '';

        // محتوى الرسالة
        $mail->isHTML(true);
        $mail->Subject = 'رسالة جديدة من موقع One Of One';
        $mail->Body    = "لقد تلقيت رسالة من:<br>الاسم: $name<br>الهاتف: $phone<br>البريد: $email<br>الرسالة: $message";

        $mail->send();
        echo 'تم إرسال رسالتك بنجاح!';
    } catch (Exception $e) {
        echo 'حدث خطأ أثناء الإرسال: ' . $mail->ErrorInfo;
    }
} else {
    echo 'طريقة الإرسال غير صحيحة.';
}