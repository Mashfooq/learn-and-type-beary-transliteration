
<?php 
define('DIR','../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();

$video= $_GET['id'];
?>

<!DOCTYPE html>
<html>
<head>
	<title>Beary</title>
	<style>
		body{
			min-height: 100vh;
			background: linear-gradient(to bottom, #33ccff ,#ff99cc);
			background-repeat: no-repeat;
		}
	.video{
		position: relative;
		margin-top: 3%;
		box-shadow: 0 15px 50px 0 rgba(0, 0, 0, .5);
		border-radius: 30px;

	}
	.video:hover{
		margin-top: 3%;
		box-shadow: 0 5px 5px 0 rgba(0, 0, 0, 1);
		border-radius: 30px;
	}
	.go-back a{
		margin-left: 10%;
		top: 5%;

	}
	.go-back a img{
		height: 45px;
		width: 45px;
	}
	.vbox div{
	height: 190px;
	width: 150px;
	}

	.vbox{
	margin-top: 20px;
	margin-bottom: 20px;
	margin-left: 12em;
	display: grid;
	grid-gap: 7px;
	grid-template-columns: repeat(auto-fit , minmax(200px, 200px));

	}

	.box1{
	background: transparent;
	border-radius: 10px;
	}
	.box1 img{
	height: 150px;
	width: 150px;
	border-radius: 10px;

	}
	.box1 img:hover{
	height: 155px;
	width: 155px;
	transition: transform 4s;
	}
	.box1 h1{
	color: black;
	text-align: center;
	font-size: 20px;
}


	</style>
	
</head>
<body>
	<?php
	 	$stmt= $admin ->ret("SELECT * FROM `guides` WHERE `g_id` = '$video'");

	 	$row = $stmt -> fetch(PDO::FETCH_ASSOC);
	 	$name = $row['name'];
	?>
	<div class="go-back">
		<br><br>
	<a href="index.php#guide"><img src="image/cancel.png"></a>
	</div>
	<center>
	<video class="video" width="600" height="600" autoplay >
  <source src="../admin/admincontroller/<?= $row['video']; ?>" type="video/mp4">
  
</video>
</center>
			<div class="vbox">
			 <?php
		     $stm = $admin ->ret("SELECT * FROM `kagunithas` WHERE `name` = '$name' ");
		     while ($row=$stm ->fetch(PDO::FETCH_ASSOC)) {
		     
		    ?>   
				<div class="box1">
					
						<img src="../admin/admincontroller/<?php echo $row['image']  ?>">
						<h1>    <?php echo $row['k_name']  ?> </h1>
				</div>

			<?php
			}
			?>
			</div>
</body>
</html>
