<div>
        <div>
        	<h1>{{header}}</h1>
            <button data-ng-click="getMovies()">Get Person data from server</button>
            <ul>
				<li ng-repeat="movie in movies">
					<div>
						<a href="#/movies/{{$index}}">
							<p>Name: {{movie.movieName}}</p>
						</a>
						<button data-ng-click="delete(movie.movieId)">Delete</button>
						<button data-ng-click="update($index)">Update</button>
					</div>
				</li>
			</ul>
        </div>
    </div>

