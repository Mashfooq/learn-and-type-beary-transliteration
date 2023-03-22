<?php 
define('DIR','');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();

$admin->redirect('user/index');
?>