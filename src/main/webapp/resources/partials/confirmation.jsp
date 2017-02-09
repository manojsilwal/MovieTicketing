<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<section class="container-wrapper">
	<div class="container">

		<div ng-model="xxxxxxxxxxxxxx">
			<div class="row">

				<div class="col-md-5">
					<h1>
						<p>UserName</p>
					</h1>
					<h3>
						<p>Movie name:{{getTicket().movie.movieName}}</p>
					</h3>
					
					<h3>
						<p>Theater name: {{getTicket().theater.tname}}</p>
					</h3>

					<h4>
						<p>Seats :</p>
						<li ng-repeat="seat in getTicket().seat">{{seat}}</li>
					</h4>
					
					<h4>
						<p>Total price:</p>
						<p>{{getTicket().price}}</p>
					</h4>

				</div>
			</div>
		<a href="#/" class="btn btn-danger" ng-click="createTicket();"> Buy Tickets</a>
		</div>

	</div>
</section>
