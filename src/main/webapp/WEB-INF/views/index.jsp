<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>One Movies an Entertainment</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
		
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 














</script>


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>

<script src="resources/js/main.js"></script>
<script src="resources/js/movieUIController.js"></script>


<!-- //for-mobile-apps -->
<link href="resources/early/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/early/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" href="resources/early/css/contactstyle.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="resources/early/css/faqstyle.css"
	type="text/css" media="all" />
<link href="resources/early/css/single.css" rel='stylesheet'
	type='text/css' />
<link href="resources/early/css/medile.css" rel='stylesheet'
	type='text/css' />
<!-- banner-slider -->
<link href="resources/early/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="resources/early/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="resources/early/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript"
	src="resources/early/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="resources/early/css/owl.carousel.css" rel="stylesheet"
	type="text/css" media="all">
<script src="resources/early/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({

			autoPlay : 3000, //Set AutoPlay to 3 seconds

			items : 5,
			itemsDesktop : [ 640, 4 ],
			itemsDesktopSmall : [ 414, 3 ]

		});

	});
</script>
<!-- //banner-bottom-plugin -->

<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="all" />


<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300'
	rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="resources/early/js/move-top.js"></script>
<script type="text/javascript" src="resources/early/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>

<body>
	<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>
						One<span>Movies</span>
					</h1></a>
			</div>
			<div class="w3_search">
				<form action="#" method="post">
					<input type="text" name="Search" placeholder="Search" required="">
					<input type="submit" value="Go">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
					<li><spring:message code="welcome.lagin" />:</li>
					<li><a href="?lang=en" style="display: inline; padding: 0px;"><img
							alt="American flag" src="resources/images/us.png"
							style="width: 40px; height: 45px;"></a></li>
					<li><a href="?lang=zh_CN"
						style="display: inline; padding: 0px;"><img alt="Nepali flag"
							src="resources/images/np.png" style="width: 40px; height: 45px;"></a></li>
					<li><a href="#/signin"><spring:message
								code="welcome.login" /></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header -->
	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
								<div class="toggle">
									<i class="fa fa-times fa-pencil"></i>
									<div class="tooltip">Click Me</div>
								</div>
								<div class="form">
									<h3>Login to your account</h3>
									<form action="#" method="post">
										<input type="text" name="Username" placeholder="Username"
											required=""> <input type="password" name="Password"
											placeholder="Password" required=""> <input
											type="submit" value="Login">
									</form>
								</div>
								<div class="form">
									<h3>Create an account</h3>
									<form action="#" method="post">
										<input type="text" name="Username" placeholder="Username"
											required=""> <input type="password" name="Password"
											placeholder="Password" required=""> <input
											type="email" name="Email" placeholder="Email Address"
											required=""> <input type="text" name="Phone"
											placeholder="Phone Number" required=""> <input
											type="submit" value="Register">
									</form>
								</div>
								<div class="cta">
									<a href="#">Forgot your password?</a>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function() {
			// Switches the Icon
			$(this).children('i').toggleClass('fa-pencil');
			// Switches the forms  
			$('.form').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
		});
	</script>
	<!-- //bootstrap-pop-up -->
	<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="#/"><spring:message
										code="welcome.home" /></a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><spring:message
										code="welcome.ourtheater" /> <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Action</a></li>
												<li><a href="genres.html">Biography</a></li>
												<li><a href="genres.html">Crime</a></li>
												<li><a href="genres.html">Family</a></li>
												<li><a href="horror.html">Horror</a></li>
												<li><a href="genres.html">Romance</a></li>
												<li><a href="genres.html">Sports</a></li>
												<li><a href="genres.html">War</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Adventure</a></li>
												<li><a href="comedy.html">Comedy</a></li>
												<li><a href="genres.html">Documentary</a></li>
												<li><a href="genres.html">Fantasy</a></li>
												<li><a href="genres.html">Thriller</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Animation</a></li>
												<li><a href="genres.html">Costume</a></li>
												<li><a href="genres.html">Drama</a></li>
												<li><a href="genres.html">History</a></li>
												<li><a href="genres.html">Musical</a></li>
												<li><a href="genres.html">Psychological</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><spring:message code="welcome.movies" />
									<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-6">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Now Showing</a></li>
											</ul>
										</div>
										<div class="col-sm-6">
											<ul class="multi-column-dropdown">
												<li><a href="#">Coming Soon</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul></li>
							<li><a href="#/showtimes"><spring:message
										code="welcome.showtimes" /></a></li>
							<li><a href="#/booknow"><spring:message
										code="welcome.booknow" /></a></li>
							<li><a href="#/aboutus"><spring:message
										code="welcome.aboutus" /></a></li>
							<li><a href="#/feedback"><spring:message
										code="welcome.feedback" /></a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>


	<!-- //nav -->


	<!-- banner -->


	<div ng-app="frontApp">
		<!-- content goes here -->
		<div ng-view></div>
	</div>


	<!-- <script>
		$(document).ready(function() {
			setTimeout(function() {
				var datetime = "2000-01-01 01:00:00 UTC";
				var myTime = datetime.substr(11, 5);
				alert(myTime);
				alert($("mytime").text())
			})
		})
	</script> -->

	<!-- <button id="myButton" class="btn btn-warning">Book Now</button> -->
	<script>
	function mytest(){
		var num = 11;
		if (num == 1) {
			location.href = "#/signin";
		} else {
			location.href = "#/theater";
		}
	}
	</script>
	
	
	<!-- <script type="text/javascript">
		$(document).ready(function() {
			setTimeout(function mytest() {
				alert("hey baby");

				document.getElementById("myButton").onclick = function() {
					var num = 1;
					if (num != 1) {
						location.href = "#/feedback";
					} else {
						location.href = "#/theater";
					}
				};
			})
		})
	</script> -->

	<script src="resources/early/js/jquery.slidey.js"></script>
	<script src="resources/early/js/jquery.dotdotdot.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			setTimeout(function() {
				$("#slidey").slidey({
					interval : 8000,
					listCount : 5,
					autoplay : false,
					showList : true
				});
				$(".slidey-list-description").dotdotdot();
			})

		})
	</script>
	<!-- //banner -->
	<!-- banner-bottom -->



	<!-- flexSlider -->
	<link rel="stylesheet" href="resources/early/css/flexslider.css"
		type="text/css" media="screen" property="" />
	<script defer src="resources/early/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				slideshow : true,
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider -->

	<!-- pop-up-box -->
	<script src="resources/early/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<iframe
			src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/148284736"></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe
			src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
	</div>
	<script>
		$(document).ready(function() {
			$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //Latest-tv-series -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>Subscribe to us</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Your email..."
									required=""> <input type="submit" value="Send">
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="index.html"><h2>
							One<span>Movies</span>
						</h2></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>
					&copy; 2016 One Movies. All rights reserved | Design by <a href="#">Manoj
						| Sameer | Sanjeev</a>
				</p>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
				<ul>
					<li><a href="genres.html">Movies</a></li>
					<li><a href="faq.html">FAQ</a></li>
					<li><a href="horror.html">Action</a></li>
					<li><a href="genres.html">Adventure</a></li>
					<li><a href="comedy.html">Comedy</a></li>
					<li><a href="icons.html">Icons</a></li>
					<li><a href="contact.html">Contact Us</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //footer -->
	<!-- Bootstrap Core JavaScript -->
	<script src="resources/early/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- //Bootstrap Core JavaScript -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->





</body>
</html>

