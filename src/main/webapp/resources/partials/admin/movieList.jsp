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
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="/FinalProject/images/{{movie.movieId}}"
								alt="Generic placeholder thumbnail">
						</div>

						<div class="caption">
								<a data-ng-href="#/movies/{{$index}}">
									<p>{{movie.movieName}}</p>
								</a>
							<p>Some sample text. Some sample text.</p>

							<p>
						<a data-ng-click="delete(movie.movieId)" data-ng-href="#/movies" 
									class="btn btn-danger">Delete</a>
								<a data-ng-href="#/updateMovie/{{$index}}" class="btn btn-primary">Update</button>
							</p>

						</div>
					</div>
				</li>
			</ul>
		</div>


	</div>
</div>


