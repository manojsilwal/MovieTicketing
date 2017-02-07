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
	<h1>{{header}}</h1>
	<form data-ng-submit="postData()">
		<h3>{{headerText}}</h3>
		<p>
			Name: <input type="text" data-ng-model="movieName">
		</p>
		<p>
			Director Name:<input type="text" data-ng-model="director">
		</p>
		<p>
			Actors :<input type="text" data-ng-model="actor" />
			<button type="button" ng-click="addActors()">Add More</button>
		</p>
		<ul>
			<li ng-repeat="actor in actors">
				<div>
					<p>{{actor}}</p>
				</div>
			</li>
		</ul>
		<p>
			Release Date :<input id="releaseDate" type="date"
				data-ng-model="date">
		</p>
		<input type="submit" id="submit" value="Submit" /><br>

		<h4>You submitted below data through post:</h4>
		<pre>Form data ={{list}}</pre>
	</form>


</body>
</html>