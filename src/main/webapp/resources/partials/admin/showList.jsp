<div class="container-wrapper">
	<div class="container">

		<div class="page-header">
			<h1>{{header}}</h1>
			<p class="lead">This is the movie list page!</p>
		</div>

		<!-- start of thumbnail -->

		<div class="row">
			<ul>
				<li ng-repeat="show in shows">
					<div class="col-sm-6 col-md-3">
						<div class="caption">
							<h3>
								<a href="#/shows/{{$index}}">
									<p>{{show.language}}</p>
								</a>
							</h3>
							<p>Some sample text. Some sample text.</p>

							<p>
								<button data-ng-click="delete(show.showId)"
									class="btn btn-danger">Delete</button>
								<button data-ng-click="update($index)" class="btn btn-primary">Update</button>
							</p>

						</div>
					</div>
				</li>
			</ul>
		</div>


	</div>
</div>


