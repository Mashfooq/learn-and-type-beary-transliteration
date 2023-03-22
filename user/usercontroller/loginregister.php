<?php 
define('DIR','../../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();


 if(isset($_POST['v_otp']))
{

  
  $b = $_POST['otp'];
  $verify = 'verified';
  $null = 'null';

   $stmt=$admin->ret("SELECT * from `user` WHERE `otp` = '$b'");
   $row = $stmt->fetch(PDO::FETCH_ASSOC);
   $num = $stmt->rowCount();


        if($num>0){
            $id=$row['u_id'];
            $admin -> cud("UPDATE `user` SET `otp` = '$null',`verify` = '$verify' WHERE `u_id` = '$id' ","updated");
            $_SESSION['u_id'] = $id;
           

           $admin->redirect('../vemailpass');
      }else{
           echo"<script>
            alert('you have entered wrong otp');
            window.location.href='../vemailotp.php';
          </script>";
           // $admin->redirect('../password');
        }
   

  }


   //password update
  if(isset($_POST['new_pass']))
{

   
      $password=$_POST['password'];
      $id = $_SESSION['u_id'];

    $pass = password_hash($password, PASSWORD_BCRYPT);


     $stmt = $admin -> cud("UPDATE `user` SET `password`='$pass' WHERE `u_id`='$id'","updated");

     $admin -> redirect('../userlogin');
 }

 if(isset($_POST['login'])){
    $email = $_POST['email'];
    $pass = $_POST['password'];

 // select all the id and password from database where it matches current email
    $stmt = $admin->ret("SELECT * FROM `user` WHERE email = '$email' ") ;
    $row = $stmt ->fetch(PDO::FETCH_ASSOC);
    // count number of rows which has same email id
    $num = $stmt ->rowCount();
    // if ther is matching email in database then it execute following code
    if($num>0){
      
        $hashedpass = $row['password'];
        // check whether current password and hashedpassword of corresponding email matches
        if(password_verify($pass,$hashedpass)){
           $id = $row['u_id'];
            $_SESSION['u_id'] = $id;
           $admin->redirect('../index');
        }
        // if doesnot match
        else{
            echo "<script>
            alert('You have Entered Wrong Password.');
             window.location.href='../userlogin.php';
            </script>";
        }  
    }
    // if email is not exist in database
    else{
        echo "<script>
        alert('Your Email-ID is not Registered Please Rigester.');
       window.location.href='../userlogin.php';
        </script>";
    }

}

?>

