<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="container-wrapper">
	<div class="container">

		<div ng-model="movies">
			<div class="row">
				<div class="col-md-5">
					<img src="resources/images/RE.jpg" alt="image" style="width: 100%" />
				</div>

				<div class="col-md-5">
					<h3>
						<p>{{movies[whichMovie].movieName}}</p>
					</h3>

					<div class="movie-info">

						<p>
							<span class="col-md-5 col-xs-6">Releasing Date :</span> <span
								class="col-md-7 col-xs-6">{{movies[whichMovie].releaseDate}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">Director :</span> <span
								class="col-md-7 col-xs-6">{{movies[whichMovie].director}}</span>
						</p>

						<p>
							<span class="col-md-5 col-xs-6">Cast :</span> <span
								class="col-md-7 col-xs-6"><ul>
									<li ng-repeat="actor in movies[whichMovie].actors">
										{{actor}}</li>
								</ul></span>
						</p>


					</div>
				</div>




			</div>
			<!-- start -->
			<div class="mar-t-15">

				<h4>Description</h4>
				<p>{{movies[whichMovie].description}}</p>

			</div>

			<!-- end -->

			<!-- <ul>
				<li>{{movies[whichMovie].movieName}}</li>
				<li>{{movies[whichMovie].director}}</li>
			</ul> -->
		</div>

	</div>
</section>