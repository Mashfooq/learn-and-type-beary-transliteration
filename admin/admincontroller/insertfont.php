<?php
define('DIR','../../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();
if(isset($_POST['insert']))
{
	$name=$_POST['name'];
	$vcn=$_POST['vcn'];
	$targetDir="uploadimg/";
	$image=$targetDir.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $image);

    $targetDirs="uploadVideo/";
	$video=$targetDirs.basename($_FILES['video']['name']);
    move_uploaded_file($_FILES['video']['tmp_name'], $video);

    $stmt =$admin -> cud("INSERT INTO `guides` (`name`, `image`, `video`,`vcn`) VALUES('".$name."','".$image."','".$video."','".$vcn."')","saved");
    $admin ->redirect('../insertfont');

}

if(isset($_POST['update']))
{
	$id =$_POST['g_id'];
	$name=$_POST['name'];

	$targetDir="uploadimg/";
	$image=$targetDir.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $image);

    $targetDirs="uploadVideo/";
	$video=$targetDirs.basename($_FILES['video']['name']);
    move_uploaded_file($_FILES['video']['tmp_name'], $video);

    $admin -> cud("UPDATE `guides` SET `name` = '$name',`image` = '$image',`video` = '$video' WHERE `g_id` = '$id'
","updated");

    $admin ->redirect('../modifyfont');
}

if(isset($_GET['g_id']))
{
	$del = $_GET['g_id'];

	$stmt =$admin -> cud("DELETE FROM `guides`WHERE `g_id` = '$del'","DELETED");
	$admin ->redirect('../modifyfont');
}

//kagunithas

if(isset($_POST['cons']))
{
	$name=$_POST['name'];
	$kname=$_POST['k_name'];
	$targetDir="uploadarticle/";
	$image=$targetDir.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $image);

    

    $stmt =$admin -> cud("INSERT INTO `kagunithas` (`name`, `image`, `k_name`) VALUES('".$name."','".$image."','".$kname."')","saved");
    $admin ->redirect('../kagunithas');

}

if(isset($_POST['updatekag']))
{
	$id =$_POST['k_id'];
	$name=$_POST['name'];
	$kname=$_POST['k_name'];
	
	$targetDir="uploadimg/";
	$image=$targetDir.basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $image);

    $admin -> cud("UPDATE `kagunithas` SET `name` = '$name',`image` = '$image',`k_name` = '$kname' WHERE `k_id` = '$id' ","updated");

   $admin ->redirect('../kagunithas');
}

if(isset($_GET['k_id']))
{
	$del = $_GET['k_id'];

	//$stmt =$admin -> cud("DELETE FROM `kagunithas`WHERE `k_id` = '$del'","DELETED");
	$admin ->redirect('../kagunithas');
}


?>