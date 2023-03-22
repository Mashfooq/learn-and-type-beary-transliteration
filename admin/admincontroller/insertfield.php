<?php
define('DIR','../../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();
if(isset($_POST['insert']))
{
	$name=$_POST['name'];

	$targetDir="uploadarticle/";
	$image=$targetDir.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $image);

    $text=$_POST['text'];


    $stmt =$admin -> cud("INSERT INTO `article` (`name`, `image`, `text`) VALUES('".$name."','".$image."','".$text."')","saved");
    $admin ->redirect('../managefield');
    

}

if(isset($_POST['update']))
{
	$id =$_POST['ar_id'];
	$name=$_POST['name'];

	$targetDir="uploadarticle/";
	$image=$targetDir.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $image);

    $text=$_POST['text'];

    $admin -> cud("UPDATE `article` SET `name` = '$name',`image` = '$image',`text` = '$text' WHERE `ar_id` = '$id'
","updated");

    $admin ->redirect('../managefield');
}


if(isset($_GET['ar_id']))
{
	$del = $_GET['ar_id'];

	$stmt =$admin -> cud("DELETE FROM `article`WHERE `ar_id` = '$del'","DELETED");
	$admin ->redirect('../managefield');
}

?>
