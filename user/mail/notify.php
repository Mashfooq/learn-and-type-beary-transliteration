<?php 
define('DIR','../../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer.php';
require 'SMTP.php';
require 'Exception.php';

require 'vendor/autoload.php';

$mail = new PHPMailer(true);

try {
    //Server settings Signed out
 
 if(isset($_POST['register'])){

    
    $name = $_POST['u_name'];
    $email = $_POST['email'] ;
     $gender = $_POST['gender'];

    $password = rand(100000,999999);
    $pass = password_hash($password,PASSWORD_BCRYPT);
   
    $otp = rand(100000,999999);
    $verify = 'Not verified';


   $stmt=$admin->ret("SELECT email from `user` WHERE email='$email'");
   $row = $stmt->fetch(PDO::FETCH_ASSOC);
   $num = $stmt->rowCount();
        if($num>0){

           echo"<script>
            alert('this user email is already used by other user please try other email address');
            window.location.href='../userlogin.php';
          </script>";
         
      }

      else{

    $stmt = $admin -> cud("INSERT INTO `user` ( `u_name`, `email`, `password`,`gender`,`otp`,`verify`) VALUES ('".$name."','".$email."','".$pass."','".$gender."','".$otp."','".$verify."')","saved");
    // $admin -> redirect('../login');

    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'bearyscript@gmail.com';                     // SMTP username
    $mail->Password   = '12345Beary@in';                               // SMTP password
    $mail->SMTPSecure = 'ssl';;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 465;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom('bearyscript@gmail.com', 'admin');
    $mail->addAddress($email,$name);

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Learn and type Beary';
    $mail->Body    = $otp;

    // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    // $mail->AddEmbeddedImage($image); 

    $mail->send();

     //what you should do after sending mail
    echo"<script>
            alert('OTP has been sent to your Email!!!');
            window.location.href='../vemailotp.php';
          </script>";

    exit();

    }

} 
}catch (Exception $e) {
  
  //error if somthing went wrong

    echo '<script>alert("Message could not be sent.")</script>';
}

    

try {
 if(isset($_POST['v_email']))
{

  $email=$_POST['email'];
  $name='user';
  
  $message=rand(100000,999999);

  // $emessage = password_hash($message, PASSWORD_BCRYPT);

  // password_verify($message,$emmesage);


 $stmt=$admin -> cud("UPDATE `user` SET `otp`='$message' WHERE `email`='$email'","updated");


    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'bearyscript@gmail.com';                     // SMTP username
    $mail->Password   = '12345Beary@in';                               // SMTP password
    $mail->SMTPSecure = 'ssl';;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 465;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    //Recipients
    $mail->setFrom('bearyscript@gmail.com', 'admin');
    $mail->addAddress($email,$name);

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Learn and type Beary';
    $mail->Body    = $message;
   
     
    // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    // $mail->AddEmbeddedImage($image); 

    $mail->send();

     //what you should do after sending mail
    echo"<script>
            alert('OTP has been sent to your Email!!!');
            window.location.href='../vemailotp.php';
          </script>";

    exit();

}

} catch (Exception $e) {
  
  //error if somthing went wrong

    echo '<script>alert("Message could not be sent.")</script>';
}
?>
