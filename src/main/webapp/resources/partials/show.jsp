<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="container-wrapper">
	<div class="container">

		<div ng-model="movies">
			<div class="row">
				<div class="col-md-5">
					<h3>
						<p>{{shows[whichShow].language}}</p>
					</h3>

					<div class="movie-info">

						<p>
							<span class="col-md-5 col-xs-6">Releasing Date :</span> <span
								class="col-md-7 col-xs-6">{{shows[whichShow].startTime}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">Director :</span> <span
								class="col-md-7 col-xs-6">{{shows[whichShow].endTime}}</span>
						</p>

						<p>
							<span class="col-md-5 col-xs-6">Cast :</span> <span
								class="col-md-7 col-xs-6">
								{{shows[whichShow].totalAvailableSheet}}
							</span>
						</p>


					</div>
				</div>




			</div>
			<!-- start -->

			<!-- end -->

			<!-- <ul>
				<li>{{movies[whichMovie].movieName}}</li>
				<li>{{movies[whichMovie].director}}</li>
			</ul> -->
		</div>

	</div>
</section>