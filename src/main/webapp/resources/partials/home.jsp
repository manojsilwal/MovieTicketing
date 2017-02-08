<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- banner -->
	<!-- banner -->
	<div id="slidey" style="display: none;">

		<ul>
			<li><img src="resources/early/images/5.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a>
				</p>
				<p class='description'>
					<span style="font-size: 20px; color: #FF8D1B;">Movie Title </span>Tarzan,
					having acclimated to life in London, is called back to his former
					home in the jungle to investigate the activities at a mining
					encampmentTarzan, having acclimated to life in London, is called
					back to his former home in the jungle to investigate the activities
					at a mining encampmentTarzan, having acclimated to life in London,
					is called back to his former home in the jungle to investigate the
					activities at a mining encampmentTarzan, having acclimated to life
					in London, is called back to his former home in the jungle to
					investigate the activities at a mining encampment Tarzan, having
					acclimated to life in London, is called back to his former home in
					the jungle to investigate the activities at a mining encampment.
				</p></li>
			<li><img src="resources/early/images/2.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a>
				</p>
				<p class='description'>Six children, genetically cross-bred with
					avian DNA, take flight around the country to discover their
					origins. Along the way, their mysterious past is ...</p></li>
			<li><img src="resources/early/images/3.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a>
				</p>
				<p class='description'>The fate of humanity hangs in the balance
					as the U.S. President and citizens decide if these aliens are to be
					trusted ...or feared.</p></li>
			<li><img src="resources/early/images/4.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a>
				</p>
				<p class='description'>Bullied as a teen for being overweight,
					Bob Stone (Dwayne Johnson) shows up to his high school reunion
					looking fit and muscular. Claiming to be on a top-secret ...</p></li>
			<li><img src="resources/early/images/6.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a>
				</p>
				<p class='description'>In the film's epilogue, Scrat keeps
					struggling to control the alien ship until it crashes on Mars,
					destroying all life on the planet.</p></li>
			<li><img src="resources/early/images/7.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a>
				</p>
				<p class='description'>In 1977, paranormal investigators Ed
					(Patrick Wilson) and Lorraine Warren come out of a self-imposed
					sabbatical to travel to Enfield, a borough in north ...</p></li>
		</ul>
	</div>

	<!-- <div id="slidey" style="display:none;">
		<ul>
			<li ng-repeat="movie in movies">
				<img src="images/5.jpg" alt=" ">
				<p class='title'>
					<a href="#">BOOK TICKET</a></p><p class='description'>
					<span style="font-size: 20px; color: #FF8D1B;">{{movie.movieName}}</span>
					{{movie.description}}
				</p>
			</li>
		</ul>   	
    </div> -->
    <script src="js/jquery.slidey.js"></script>
    <script src="js/jquery.dotdotdot.min.js"></script>
	   <script type="text/javascript">
			$("#slidey").slidey({
				interval: 8000,
				listCount: 5,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
		</script>
<!-- //banner -->
<!-- banner-bottom -->

<!-- //banner-bottom -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i
					class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i
					class="fa fa-facebook"></i></a></li>
			<li class="w3_dribbble"><a href="#">Dribbble <i
					class="fa fa-dribbble"></i></a></li>
			<li class="w3_g_plus"><a href="#">Google+ <i
					class="fa fa-google-plus"></i></a></li>
		</ul>
	</nav>
</div>
<!-- general -->
<div class="general">
	<h4 class="latest-text w3_latest_text">Now Showing</h4>
	<div class="container">
		<div class="bs-example bs-example-tabs" role="tabpanel"
			data-example-id="togglable-tabs">
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="home"
					aria-labelledby="home-tab">
					<div class="w3_agile_featured_movies">



						


						<div class="col-md-2 w3l-movie-gride-agile" ng-repeat="movie in movies">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img
								src="/FinalProject/images/{{movie.movieId}}" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.html">{{movie.movieName}}</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<button class="btn btn-warning" href="#">Book Now</button>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>

						

						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //general -->



	<!-- Latest-tv-series -->
	<div class="Latest-tv-series">
		<h4 class="latest-text w3_latest_text w3_home_popular">Next
			Change</h4>
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						
						<li ng-repeat="movie in movies">
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="/FinalProject/images/{{movie.movieId}}" alt=" "
											class="img-responsive" /> <a class="w3_play_icon1"
											href="#small-dialog1"> <span
											class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">{{movie.movieName}}</p>
									<p class="fexi_header_para">
										<span class="conjuring_w3">Story Line<label>:</label></span>
										{{movie.description}}
									</p>
									<p class="fexi_header_para">
										<span>Date of Release<label>:</label></span> {{movie.releaseDate}}
									</p>
									<p class="fexi_header_para">
										<span>Director<label>:</label></span> {{movie.director}}
									</p>
									<p class="fexi_header_para">
										<span>Actors<label>:</label></span> {{movie.actors}}
									</p>
									<p class="fexi_header_para fexi_header_para1">
										<span>Why to wait? <label>:</label>
										</span>
										<button class="btn btn-warning" href="#">Book Now</button>
									</p>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
			
			<!-- //flexSlider -->
		</div>
	</div>