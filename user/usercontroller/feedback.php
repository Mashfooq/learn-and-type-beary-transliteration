<?php
define('DIR','../../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();

if(isset($_POST['submit']))
{
	$name=$_POST['email'];
    $text=$_POST['text'];
    $u_id=$_POST['u_id'];

    $stmt =$admin -> cud("INSERT INTO `feedback` (`email`, `text`,`u_id`) VALUES('".$name."','".$text."','".$u_id."')","saved");
   

    $admin ->redirect('../index');
    

}
if(isset($_GET['f_id']))
{
	$del = $_GET['f_id'];

	$stmt =$admin -> cud("DELETE FROM `feedback`WHERE `f_id` = '$del'","DELETED");
	$admin ->redirect('../../admin/feedback');
}

?>