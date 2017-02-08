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

	<div class="addForm">
		<h1>{{header}}</h1>
		<form data-ng-submit="postData()">
			<h3>{{headerText}}</h3>
			<div class="form-group">
				<label for="name">Name</label> 
				<input type="text" data-ng-model="movieName" class="form-control" id="name" placeholder="Name">
			</div>
			<div class="form-group">
				<label for="dname">Director Name</label> 
				<input type="text" data-ng-model="director" class="form-control" id="dname" placeholder="Director Name">
			</div>

			<div class="form-group">
				<label for="actor">Actors </label> 
				<input type="text" data-ng-model="actor" class="form-control" id="actor" placeholder="Actors Name" /> <br />

				<button type="button" ng-click="addActors()" class="btn btn-default">
					<span class="glyphicon glyphicon-plus"></span> Add More
				</button>
			</div>
			<p>Choose File:</p>
			<input type = "file" file-model = "myFile"/>
			
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