<?php 
define('DIR','../');
require_once DIR .'config.php';

$control =new Controller();

$admin = new Admin();


?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Beary application.</title>
	<style >
@media screen and (max-width: 1080px){
.k-logo img{
	height: 80px;
	width: 80px;
	margin-top: 20px;
	margin-left: 3vw;
	opacity: 1.0;
}
h1.title 
{
	position: fixed;
	margin-left: 3vw;
	margin-top: 35vh;
	font-size: 65px;
	opacity: 0.5;
	text-transform: uppercase;
}
.navbar ul{
	display:block; 
	list-style-type: none;
	padding: 40px;
	background-color: white;
}

.navbar ul a{
	text-decoration: none;
	color:black;
	align-items: center;
	background-color: white;
	text-transform: uppercase;
	font-size: 2em;
	font-weight: bold;
	padding: 5px 20px;
}

.navbar ul a:hover {
	color:white;
	padding: 5px 20px;
	background-color: black ;
}

span.home-span{
	display: none;
}
}
	</style>
</head>
<body>
<section class="main">

<!-- home section starts here -->	
	<section class="home" id="home">
			
			<img src="image/logo.jpg">

	<div class="sec">	
	<header>	
		<a href="#" class="k-logo"><img src="image/k-logo.png"></a>

		<a href="logout.php" class="login">
			<img class="login" src="image/User.png"></a>
			<?php
	 if(isset($_SESSION['u_id'])){
	 	?>
			<span class="home-span" style="left: 88.5%;color: black;top: 8%;font-size: 1em;position: fixed;">
				Sign out
			</span>
		<?php } ?>
		<?php
	 if(!(isset($_SESSION['u_id']))){
	 	?>
			<span class="home-span" style="left: 88.5%;color: black;top: 8%;font-size: 1em;position: fixed;">
				Sign in
			</span>
		<?php } ?>
		<a href="#menu" class="hamburger" id="home">
			<img class="hamburger" src="image/hamburger.png"></a>	
	</header>
	</div>
	<h1 class="title">learn and <br>
		type beary</h1>
	</section>
<!-- home section ends here -->

<!-- menu section starts here -->
	<section class="space" id="menu" style="height: 100vh;">
	<div class="navbar">
	<ul>
		<li>
			<a href="#home" >home</a>
			<span class="home-span"><br>
				Happy to Home... <br><br>

			</span>
		</li>
		<li>
			<a href="#about">about</a>
			<span class="home-span" style="left: 20%;"><br>
				About is along side... <br><br>
				here breif discription of two main feature i.e translator & guide is been given.<br>
				Take time to read the instruction given.
			</span>
		</li>
		<li>
			<a href="#translator" >transliterate</a>
			<span class="home-span" style="left: 35%;"><br>
				Turn to Translator...<br><br>
				kindly sing-in to access translator.<br>
				Here, inputs are English only,
				special character aren't allowed except full stop (give space before and after),
				click on translate to get output.
				To sign-out , in home page click on sing-out.

			</span>
		</li>
		<li>
			<a href="#guide">guide</a>
			<span class="home-span" style="left: 52%;"><br>
				Go get Guide...<br><br>
				Beary script has 13 vowels , 33 consonents and numbers , all the characters are listed here .<br>
				You also get to see kagunithas of each consonants .
			</span>
		</li>
		<li>
			<a href="#artical">article</a>
			<span class="home-span" style="left: 62%;"><br>
				Appreciate the Art...<br><br>
				Articles ,poems ,short-story in English, kannada, malayalam of Beary language are featured here.
				Featured contents are of respective content writers . <br>
				To feature new content kindly submit through feedback section .
			</span>
		</li>
		<li>
			<a href="#contact">contact</a>
			<span class="home-span" style="left: 78%;"><br>
				Contact the Creator...<br><br>
				To access contact feild ,kindly sign-in .
				Write your feedback and send it to support , it helps to improve .
				To know more contact directly the creator , Email provided. <br>
				Send your work (poem, article, short story ) written in English, kannada, malayalam of beary language.


			</span>
		</li>
	</ul>	
	</div>
	</section>
<!-- menu section ends here -->

<!-- about section starts here -->
	<section class="space" style="height:100%;background: rgba(0, 0, 0, .7);" id="about">
		<br>
			<p class="guidezzz" >about</p>
	<div class="about">
		<div class="abt">
			<img src="image/translator.png" class="abt-img">
			<hr style="margin :10px;border-top: solid black 2px;border-left: solid black 2px;">
			<div class="abt-txt" ><p>
				<b>Transliteration </b>
				: This feature, allows user to input only in English and converts it into a target language by preserving the original meaning.Here the input given should be in English language and click on 'Translate' button where it will translate it to Beary language.
						        	 <br> In order to access this feature it's mandatory for the user to login first. One of the best apps for easy and fast translations. If you are a student, tourist or new to the place , this app will definitely help you to interact with the local people in a better way as it is one of the most spoken local language in  Dakshina Kannada district. It can translate words and sentences with simple and user friendly interface. It also provides you with instant start and search feature.</p>
			</div>
		</div>
		<div class="abt">
			<img src="image/guidezz.png" class="abt-img">
			<hr style="margin :10px;border-top: solid black 2px;border-left: solid black 2px;">
			<div class="abt-txt"><p>
				<b>Guide </b>
				: This application support's,  read through and  listen to the material in one language . It is organized into different sections that consists of vowels, consonants and numbers. If you click on each character, an animated video will be displayed that indicates the starting point and the ending point. It includes notes on pronunciation and many different examples. It also has kannada character below beary character which helps local users learn with ease .<br>
			        	  It is an excellent resource for learners who want to build their beary vocabulary.
						It also aids in understanding newer terms and designed by keeping both native and english speakers in mind .</p>
			</div>	
		</div>

	</div>
	<a href="#menu" class="goback-menu">Scroll</a>
	</section>
<!-- about section ends here -->

<!-- translator section starts here -->
	

	

	<section class="space" id="translator" style="margin-top: 10px;background: black">
	 <div class="container">
	 	<p class="guidezzz">
      transliterate
      </p>
    <?php
	 if((isset($_SESSION['u_id']))){
	 	?>
	 	<center>
	 	<div class="tran">
	 		<div class="tran-text" style="padding: 20px;">
	 			<h2 style="padding: 35px;">Kindly sign in to endevour this feature , Thank you! </h2>
	 			<a href="userlogin.php" class="tran-butt">Sign In</a>
	 		</div>
	 	</div>
	 	</center>
	 </div>
	</section>
	 <?php } ?>

	<?php
	 if(!isset($_SESSION['u_id'])){
	 	?>
      
      <div id="leftPanel">
        
        
        <select id="inpLang" class="langu">
          <option class="langu" value="beary">Beary</option>
         </select>
        
        <label  class="warn">
          Type input in English only , no special characters .
        </label>
          <BR>
        <textarea type="text" name="text" id="inputEnglish" style="width: 96%;height: 1.5em;" maxlength="4000" > </textarea>
        <br>
        <button class="simp" id="transliterate">Translate</button>
        <button class="simp" id="sampleMalayalam">Sample Text</button>
        <button  class="simp" id="copyInpText">Copy</button> 
      </div>

      <div id="rightPanel">
       
        <textarea id="outputText" readonly onCopy="return false" onDrag="return false" onDrop="return false" onPaste="return false">
            Output comes here 
        </textarea>
        <br />
        <button style="display: none;" class="simp" id="copyOutText">Copy Output Text to Clipboard</button>
        <br>
        <label class="warn"> Disclaimer: This transliteration is not guaranteed to be completely
          accurate. Please check each word. 
        </label>
        <br />
      </div>
      	<a href="#menu" class="goback-menu">Scroll </a>
    </div>

	</section> 
<?php 
}
?>
<!-- translator section ends here -->

<!-- guide section starts here -->
	<section class="space" style="height: 100%;background: black;" id="guide">
		<div class="name-guide">
		<p class="guidezzz"> vowels</p>
		</div>
			<div class="vbox">
			 <?php
		     $stm =$admin ->ret("SELECT * FROM `guides` WHERE `vcn` = 'vowels'");
		     while ($row=$stm ->fetch(PDO::FETCH_ASSOC)) {
		     
		    ?>   
				<div class="box1">
					<a href="video.php?id=<?php echo $row['g_id']; ?>">
						<img src="../admin/admincontroller/<?php echo $row['image']  ?>">
					</a>
					 <h1 class="char-name">    <?php echo $row['name']  ?> </h1> 

				</div>

			<?php
			}
			?>
			</div>
		<div class="name-guide">
		<p class="guidezzz"> consonents</p>
		</div>
		<div class="cbox">
			 <?php
		     $stmts =$admin ->ret("SELECT * FROM `guides` WHERE `vcn` = 'consonents'");
		     while ($rowws=$stmts ->fetch(PDO::FETCH_ASSOC)) {
		     
		    ?>   
				<div class="box1">
					<a href="video.php?id=<?php echo $rowws['g_id']; ?>">
						<img src="../admin/admincontroller/<?php echo $rowws['image']  ?>">
					</a>
					 <h1>    <?php echo $rowws['name']  ?> </h1> 

				</div>

			<?php
			}
			?>
		</div>
		<div class="vbox">
			 <?php
		     $stmt =$admin ->ret("SELECT * FROM `guides` WHERE `vcn` = 'lconsonents'");
		     while ($ros=$stmt ->fetch(PDO::FETCH_ASSOC)) {
		     
		    ?>   
			<div class="box1">
			<a href="video.php?id=<?php echo $ros['g_id']; ?>">
				<img src="../admin/admincontroller/<?php echo $ros['image']  ?>">
			</a>
			 <h1>    <?php echo $ros['name']  ?> </h1> 

			</div>

			<?php
			}
			?>
		</div>
		
		<div class="name-guide">
		<p class="guidezzz"> numbers</p>
		</div>
		<div class="cbox">
			 <?php
		     $stms =$admin ->ret("SELECT * FROM `guides` WHERE `vcn` = 'numbers'");
		     while ($rows=$stms ->fetch(PDO::FETCH_ASSOC)) {
		     
		    ?>   
			<div class="box1">
			<a href="video.php?id=<?php echo $rows['g_id']; ?>">
				<img src="../admin/admincontroller/<?php echo $rows['image']  ?>"> </a>
			
			 <h1>    <?php echo $rows['name']  ?> </h1> 

			</div>

			<?php
			}
			?>
		</div>  
	</section>
<!-- guide section ends here -->

<!-- article section starts here -->
	<section class="space" id="artical" style="min-height: 100vh;background: rgba(0, 0, 0, .7);" >
		<p class="guidezzz">articles</p>
		
			 <?php
		     $statment =$admin ->ret("SELECT * FROM `article`");
		     while ($rowss=$statment ->fetch(PDO::FETCH_ASSOC)) {
		     
		    ?> 
		    	<div class="article-sec">
				<img src="../admin/admincontroller/<?php echo $rowss['image']  ?>">
				<h1 style="font-size: 25px;margin-left: 2%;"><?php echo $rowss['name']  ?></h1>
				<hr style="width: 90%;background: black;size: 3px;margin-left: 2%;">
				<p><?php echo $rowss['text']  ?></p><br>
				</div>

			<?php
			}
			?>
		<div class="about">
				<div class="poster">
					<a href="https://timesofindia.indiatimes.com/home/education/news/website-to-convert-english-to-beary-script-launched/articleshow/84225571.cms">
					<img src="image/news.jpg" class="poster-img">
					</a>
				</div>
				<div class="poster">
					<a href="https://www.msn.com/en-in/money/careers/website-to-convert-english-to-beary-script-launched/ar-AALTNRM">
					<img src="image/news2.jpg" class="poster-img">
					</a>
				</div>
		</div>
		<a href="#menu" class="goback-menu">Scroll </a>


	</section>
<!-- article section ends here -->
<!-- contact section starts here -->

<?php
	 if(isset($_SESSION['u_id'])){
	 	 $u_id =  $_SESSION['u_id'];
	 	?>

	<section class="space" style="margin-top:10px;background: rgba(0, 0, 0, .7);" id="contact">
		
		<p class="guidezzz">
      contact 
      </p>
			<div class="contact-container">
				<div class="contact-box">
					<div class="contact-details">
					<img src="image/logoo.jpg" class="contact-img">
					<h4  style="line-height: 25px;">    Karnataka Beary Sahithya Academy  </h4><br>
					Address : Samarthya soudha, 2nd floor, Mangaluru taluk panchayath old building.
					<br>Mangaluru 575001
					<br>Email : bearyacademy@yahoo.in
					<br>Phone : 74839 46578	
					</div>
				</div>
				<div class="contact-box1">
					<div class="contact-details">
					<img src="image/shafeeq.jpg" class="contact-img">
					<h4  style="line-height: 25px;">Name : KA Ismail Shafeeq     </h4>
					<br>Profile : Student
					<br>Email : ismailshafeeq12@gmail.com
					<br>college : St Aloysius college  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Autonomous) Mangaluru	
					<br>Batch : 2018-2021 
					</div>
				</div>
				<div class="contact-box1">
					<div class="contact-details">
					<img src="image/melroy.jpg" class="contact-img">
					<h4  style="line-height: 25px;">    Name : Melroy Pinto </h4>
					<br>Profile : Student
					<br>Email : melroypinto619@gmail.com
					<br>college : St Aloysius college  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Autonomous) Mangaluru 
					<br>Batch : 2018-2021
					</div>
				</div>
				<div class="contact-box1">
					<div class="contact-details">
					<img src="image/mashfooq.jpg" class="contact-img">
					<h4  style="line-height: 25px;">    Name : U.T Mohammed Mashfooq <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hussain </h4>
					Profile : Student
					<br>Email : mashhussmashfoo@gmail.com
					<br>college : St Aloysius degree college<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Autonomous) Mangaluru	
					<br>Batch : 2018-2021
					</div>
				</div>
			</div>

      <div class="form">
      <form action="usercontroller/feedback.php" method="post">
      	<h1> feedback</h1>
      	<div><?php 
      		$id = $_SESSION['u_id'];
      		$st =$admin ->ret("SELECT * FROM `user` WHERE `u_id` = '$id'");
		    $ro=$st ->fetch(PDO::FETCH_ASSOC);
		     ?>
      	<input type="email" name="email" value="<?php echo $ro['email'] ?>"  class="input-e" readonly >
      	</div>
      	<input type="hidden" name="u_id" value="<?php echo $u_id ?>">
      	<div>
      	<textarea name="text" placeholder="Enter your feedback..." class="input-t" required>

      	</textarea>
      	</div>
      	<button name="submit" value="submit" name="submit">submit</button>
      </form>
      </div>




	<a href="#menu" class="goback-menu">Scroll </a>
	</section>
<?php 
}
?>
<!-- contact section ends here -->
</section>

 <script src="js/malayalam.js"></script>
 <script src="js/script.js"></script>


</body>
</html>
