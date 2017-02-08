<div class="container-wrapper">
	<div class="container">

		<div class="page-header">
			<h1>{{header}}</h1>
			<p class="lead">This is the movie list page!</p>
		</div>

		<!-- start of thumbnail -->

		<div class="row">
			<ul>
				<li ng-repeat="theater in theaters">
					<div>
						<a href="#/theaters/{{$index}}">
							<p>Name: {{theater.tname}}</p>
						</a>
						<button data-ng-click="delete(theater.theaterId)">Delete</button>
						<a href="#/updateTheater/{{theater.theaterId}}">Update</a>
				</li>
			</ul>
		</div>
	</div>
</div>


