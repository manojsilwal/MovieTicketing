<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Movie Ticketing</title>
<meta name="viewport" content="width=device-width, user-scalable=no">
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,100,700,900'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="resources/css/style.css">

<!-- bootstrap css -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<body data-ng-app='movieTicketingApp'>

	<!-- <h2>Movie Ticketing</h2>
	<ul>
		<li><a href="#/">Home</a></li>
		<li><a href="#/addMovie">Add Movie</a></li>
		<li><a href="#/movies">Movie List</a></li>
	</ul> -->

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
					aria-expanded="false">User <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Add</a></li>
						<li><a href="#">User List</a></li>

					</ul></li>

				<li class="dropdown"><a  class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Movie <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#/addMovie">Add</a></li>
						<li><a href="#/movies">Movie List</a></li>

					</ul></li>
			</ul>


		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- start of nav -->

	<div ng-view></div>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- bootstrap js -->
	<script src="resources/js/bootstrap.min.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
	<script src="resources/js/app.js"></script>


	<script src="resources/js/movieController.js"></script>


</body>
</html>
