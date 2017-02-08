<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Movie Ticketing</title>
<meta name="viewport" content="width=device-width, user-scalable=no">
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,100,700,900'
	rel='stylesheet' type='text/css'>



<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">






<link rel="stylesheet" href="resources/css/style.css">


<link rel="stylesheet" href="/resources/demos/style.css">


<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.4/jquery.datetimepicker.min.css"
	rel="stylesheet" />



<!-- 
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js">	
	
</script> -->
<body data-ng-app='movieTicketingApp'>

	<!-- start of nav -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#/">Home</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> User <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addUser">Add</a></li>
							<li><a href="#/users">User List</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> Movie <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/FinalProject/addMovie">Add</a></li>
							<li><a href="#/movies">Movie List</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> Theater <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addTheater">Add</a></li>
							<li><a href="#/theaters">Theater List</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> Show <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#/addShow">Add</a></li>
							<li><a href="#/shows">Show List</a></li>
						</ul></li>

					<li><a href="/login">Login </a></li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>


	<!-- content goes here -->
	<div ng-view></div>


	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.4/jquery.datetimepicker.min.js"></script>



	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
	<script src="resources/js/app.js"></script>
	<script src="resources/js/userController.js"></script>
	<script src="resources/js/movieController.js"></script>

	<script src="resources/js/theaterController.js"></script>
	<script src="resources/js/showController.js"></script>

	<script type="text/javascript">
		$('#example').datetimepicker();
	</script>

</body>
</html>
