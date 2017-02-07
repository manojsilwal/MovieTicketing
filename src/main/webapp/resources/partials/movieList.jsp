<div class="container-wrapper">
	<div class="container">

		<div class="page-header">
			<h1>{{header}}</h1>
			<p class="lead">This is the movie list page!</p>
		</div>

		<!-- start of thumbnail -->

		<div class="row">
			<ul>
				<li ng-repeat="movie in movies">
<<<<<<< HEAD
					<div>
						<a href="#/movies/{{$index}}">
							<p>Name: {{movie.movieName}}</p>
						</a>s
						<button data-ng-click="delete(movie.movieId)">Delete</button>
						<button data-ng-click="update($index)">Update</button>
=======
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="resources/images/RE.jpg"
								alt="Generic placeholder thumbnail">
						</div>

						<div class="caption">
							<h3>
								<a href="#/movies/{{$index}}">
									<p> {{movie.movieName}}</p>
								</a>
							</h3>
							<p>Some sample text. Some sample text.</p>

							<p>
								<button data-ng-click="delete(movie.movieId)"
									class="btn btn-danger">
									Delete
								</button>
								<button data-ng-click="update($index)" class="btn btn-primary">Update</button>
							</p>

						</div>
>>>>>>> 01dab55e73454da4e972d214ce8f98e1ac469ac4
					</div>
				</li>
			</ul>
		</div>

		<!-- end of thumbnail -->

	<!-- 	<ul>
			<li ng-repeat="movie in movies">
				<div>
					<a href="#/movies/{{$index}}">
						<p>Name: {{movie.movieName}}</p>
					</a>
					<button data-ng-click="delete(movie.movieId)"
						class="btn btn-danger">
						<span class="glyphicon glyphicon-remove"></span>Delete
					</button>
					<button data-ng-click="update($index)" class="btn btn-primary">Update</button>
				</div>
			</li>
		</ul> -->
	</div>
</div>


