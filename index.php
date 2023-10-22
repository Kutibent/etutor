<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Web Based E Based Tutor App</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/examples.css" type="text/css"
	media="all" />
<script src="js/jquery-1.8.1.min.js"></script>
<script src="js/jquery.carouFredSel-6.0.5-packed.js"></script>
<script type="text/javascript" language="javascript">
			$(function() {
				
$("#foo1").carouFredSel();
$("#foo2").carouFredSel({
	width	: 1000,
	items	: 8,
	scroll	: 4
});
$("#foo3").carouFredSel({
	items 		: 1,
	direction	: "up",
	auto : {
		easing		: "elastic",
		duration	: 1000,
		timeoutDuration: 2000,
		pauseOnHover: true
	}
}).find(".slide").hover(
	function() { $(this).find("div").slideDown(); },
	function() { $(this).find("div").slideUp();	}
);
			});
</script>

</head>
<body>
	<div class="header-bg">
		<div class="wrap">
			<div class="wrapper">

				<div class="transparent p1">
					<div class="wrap">
						<div class="html_carousel">
							<div id="foo3">
								<div class="slide">
									<img src="images/e1.jpg" alt="carousel 1" width="1000"
										height="450" />
									<div>
										<h4>E Based Tutor</h4>
										<p>Web Based E Based Tutor App</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e2.jpg" alt="carousel 2" width="1000"
										height="450" />
									<div>
										<h4>E Based Tutor</h4>
										<p>Web Based Math Learning App</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e3.jpg" alt="carousel 3" width="1000"
										height="450" />
									<div>
										<h4>Math Learning</h4>
										<p>Web Based Math Learning App</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e4.jpg" alt="carousel 4" width="1000"
										height="450" />
									<div>
										<h4>Math Learning</h4>
										<p>Web Based Math Learning App</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e5.jpg" alt="carousel 5" width="1000"
										height="450" />
									<div>
										<h4>E Based Tutor</h4>
										<p>Web Based E Based Tutor App</p>
									</div>
								</div>


							</div>
							<div class="header">
								<div class="logo">
									<a href="index.html"><img src="images/logo.png" /></a>
								</div>

								<div class="menu">
									<ul>
				 <?php include("incmenu.php"); ?>
			</ul>
								</div>

								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>

	<div class="wrap">
		<div class="wrapper">
			<div class="content">
				<div class="grids">
					<div class="bot-grid">
						<img src="images/pic.jpg" alt="" />
						<h3>Addition</h3>
						<p>about addition</p>
						<a href="../system/index.php"><p>
								<span class="one">Take Exercises</span>
							</p></a>
					</div>
					<div class="bot-grid1">
						<img src="images/pic1.jpg" alt="" />
						<h3>Subtraction</h3>
						<p>about subtraction</p>
						<a href="../system/index.php"><p>
								<span class="two">Take Exercises</span>
							</p></a>
					</div>
					<div class="bot-grid2">
						<img src="images/pic2.jpg" alt="" />
						<h3>Division</h3>
						<p>about division</p>
						<a href="../system/index.php"><p>
								<span class="three">Take Exercises</span>
							</p></a>
					</div>
					<div class="bot-grid3">
						<img src="images/pic3.jpg" alt="" />
						<h3>Multiplication</h3>
						<p>about multiplication</p>
						<a href="../system/index.php"><p>
								<span class="four">Take Exercises</span>
							</p></a>
					</div>
						<div class="bot-grid3">
						<img src="images/pic3.jpg" alt="" />
						<h3>English Language</h3>
						<p>about Alphabet</p>
						<a href="../system/index.php"><p>
								<span class="four">Take Exercises</span>
							</p></a>
					</div>
					<div class="clear"></div>
				</div>
				<!--
   		<div class="grids-bottom">
   			<div class="grid">
   				<h2>Expert<span>Lorem ipsum dolor</span></h2>
   				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
   				<a href="#"><p><span class="one1">Read More</span></p></a>
   				
   			</div>
   			<div class="grid1">
   				<h2>Quality<span>Lorem ipsum dolor</span></h2>
   				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
   				<a href="#"><p><span class="two1">Read More</span></p></a>
   			</div>
   			<div class="grid2">
   				<h2>Goal<span>Lorem ipsum dolor</span></h2>
   				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
   				<a href="#"><p><span class="three1">Read More</span></p></a>
   			</div>
   			<div class="grid3">
   				<h2>Visions<span>Lorem ipsum dolor</span></h2>
   				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
   				<a href="#"><p><span class="four1">Read More</span></p></a>
   			</div>
   			<div class="clear"></div>
   	</div>	
    -->
			</div>
		</div>
	</div>

	<div class="footer-bottom">
		<div class="wrap">
			<div class="footer-text">
				<div class="copy">
					<p>
						&copy; 2022 All rights Reserved | Design by Emmanuel <a href="#">Online
							E Based Tutor App</a>
					</p>
				</div>

				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>
