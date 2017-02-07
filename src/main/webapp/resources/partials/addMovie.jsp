<!DOCTYPE html>

<script type="text/javascript">
	$(document).ready(function() {

		$("#releaseDate").datepicker({
			changeYear : true,
			changeMonth : true,
			yearRange : "1990:2017"
		});
	})
</script>
<body>
<<<<<<< HEAD
	<h1>{{header}}</h1>
	<form data-ng-submit="postData()">
		<h3>{{headerText}}</h3>
		<p>
			Name: <input type="text" data-ng-model="movie.movieName">
		</p>
		<p>
			Director Name:<input type="text" data-ng-model="movie.director">
		</p>
		<p>
			Actors :<input type="text" data-ng-model="actor" />
			<button type="button" ng-click="addActors()">Add More</button>
		</p>
		<ul>
			<li ng-repeat="actor in movie.actors">
				<div>
					<p>{{actor}}</p>
				</div>
			</li>
		</ul>
		<p>
			Release Date :<input id="releaseDate" type="date"
				data-ng-model="movie.releaseDate">
		</p>
		
		<p>Select Image :<input type = "file" file-model = "myFile"/></p>
		
		<input type="submit" id="submit" value="Submit" /><br>
		
		<h4>You submitted below data through post:</h4>
		<pre>Form data ={{list}}</pre>
	</form>
=======
	<div class="addForm">
		<h1>{{header}}</h1>
		<form data-ng-submit="postData()">
			<h3>{{headerText}}</h3>
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					data-ng-model="movieName" class="form-control" id="name"
					placeholder="Name">
			</div>
			<div class="form-group">
				<label for="dname">Director Name</label> <input type="text"
					data-ng-model="director" class="form-control" id="dname"
					placeholder="Director Name">
			</div>

>>>>>>> adaaa826187364650ec7c4ecb4520a7efd401bab

			<div class="form-group">
				<label for="actor">Actors </label> <input type="text"
					data-ng-model="actor" class="form-control" id="actor"
					placeholder="Actors Name" /> <br />

				<button type="button" ng-click="addActors()" class="btn btn-default">
					<span class="glyphicon glyphicon-plus"></span> Add More
				</button>
			</div>
			<ul>
				<li ng-repeat="actor in actors">
					<div>
						<p>{{actor}}</p>
					</div>
				</li>
			</ul>
			<div class="form-group">
				<label for="releaseDate">Release Date </label> <input
					id="releaseDate" type="date" data-ng-model="date"
					class="form-control" placeholder="Release Date">
			</div>
			<input type="submit" id="submit" value="Submit"
				class="btn btn-default" /><br>

			<h4>You submitted below data through post:</h4>
			<pre>Form data ={{list}}</pre>
		</form>
	</div>

</body>
</html>