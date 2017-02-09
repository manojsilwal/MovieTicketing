<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<section class="container-wrapper">
	<div class="container">

		<div ng-model="users">
			<div class="row">
			<!-- 	<div class="col-md-5">{{users[whichUser].username}}</div> -->

				<div class="col-md-5">
					<h1>
						<p>{{users[whichUser].username}}</p>
					</h1>
					<h3>
						<p>{{users[whichUser].email}}</p>
					</h3>

					<div class="movie-info">

						<p>
							<span class="col-md-5 col-xs-6">Street:</span> <span
								class="col-md-7 col-xs-6">{{users[whichUser].address.street}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">City:</span> <span
								class="col-md-7 col-xs-6">{{users[whichUser].address.city}}</span>
						</p>
						<p>
							<span class="col-md-5 col-xs-6">State:</span> <span
								class="col-md-7 col-xs-6">{{users[whichUser].address.state}}</span>
						</p>


						<p>
							<span class="col-md-5 col-xs-6">Zip:</span> <span
								class="col-md-7 col-xs-6">{{users[whichUser].address.zip}}</span>
						</p>


					</div>
				</div>
			</div>
			
		</div>

	</div>
</section>



