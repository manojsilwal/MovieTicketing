<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<section class="container-wrapper">
	<div class="container">

		<div ng-model="xxxxxxxxxxxxxx">
			<div class="row">

				<div class="col-md-5">
				<br/>
					<h1>
						<p>UserName</p>
					</h1>
					<div class="panel-group">
						<div class="panel panel-primary">
							<div class="panel-heading">Movie name</div>
							<div class="panel-body">{{getTicket().movie.movieName}}</div>
						</div>

						<div class="panel panel-warning">
							<div class="panel-heading">Theater name</div>
							<div class="panel-body">{{getTicket().theater.tname}}</div>
						</div>

						<div class="panel panel-success">
							<div class="panel-heading">Seats</div>
							<div class="panel-body">
								<li ng-repeat="seat in getTicket().seat">{{seat}}</li>
							</div>
						</div>

						<div class="panel panel-info">
							<div class="panel-heading">Total price</div>
							<div class="panel-body">{{getTicket().price}}</div>
						</div>

					</div>


					<!-- <h3>
						<p>Movie name:{{getTicket().movie.movieName}}</p>
					</h3> -->

					<!-- <h3>
						<p>Theater name: {{getTicket().theater.tname}}</p>
					</h3> -->

					<!-- <h4>
						<p>Seats :</p>
						<li ng-repeat="seat in getTicket().seat">{{seat}}</li>
					</h4> -->

					<!-- 	<h4>
						<p>Total price:</p>
						<p>{{getTicket().price}}</p>
					</h4> -->

				</div>
			</div>

		<!-- 	<button name="buy_now_button" type="submit" value="Buy Now"
				class="js-purchase__buy-now e-btn--3d -size-m -width-full">
				<strong>Buy Now</strong>
			</button> -->
			
			<a href="#/" class="btn btn-danger" ng-click="createTicket();">
				<strong>Buy Tickets</strong></a>
		</div>

	</div>
</section>
