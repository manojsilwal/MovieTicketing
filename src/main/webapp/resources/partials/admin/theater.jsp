<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<section class="container-wrapper">
	<div class="container">

		<div ng-model="theaters">
			<div class="row">
				<!-- 	<div class="col-md-5">{{users[whichUser].username}}</div> -->

				<div class="col-md-5">
					<h1>
						<p>{{theaters[whichTheater].tname}}</p>
					</h1>
					<h3>
						<p>Total Seats :{{theaters[whichTheater].totalSeats}}</p>
					</h3>

					<div class="movie-info">
					<h4><p> Address</p></h4>

						<p>
							<span class="col-md-5 col-xs-6">Street:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].address.street}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">City:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].address.city}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">State:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].address.state}}</span>
						</p>


						<p>
							<span class="col-md-5 col-xs-6">Zip:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].address.zip}}</span>
						</p>


					</div>


					<div class="movie-info">
					<h4><p> Show</p></h4>

						<p>
							<span class="col-md-5 col-xs-6">Show Start Time:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].show.startTime}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">EndTime:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].show.endTime}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">Total Available Sheet:</span> <span
								class="col-md-7 col-xs-6">{{theaters[whichTheater].show.totalAvailableSheet}}</span>
						</p>
		


					</div>
				</div>
			</div>

		</div>

	</div>
</section>




