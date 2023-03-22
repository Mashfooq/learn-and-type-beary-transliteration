<?php 
define('DIR','../../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();


if(isset($_POST['login']))
{


$email=$_POST['email'];
$password=$_POST['password'];

$stmt=$admin->ret("SELECT * FROM `admin` WHERE `email` = '$email' AND `password` = '$password'");
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$num=$stmt->rowCount();
if( $num > 0 ){
	

	$id = $row['a_id'];

	$_SESSION['a_id'] = $id ;
	$admin->redirect('../index');
}
else
{
	echo"<script>alert('Your email id or password is wrong!!');
	window.location.href='../adminlogin.php';
	</script>";

}

}

?>

