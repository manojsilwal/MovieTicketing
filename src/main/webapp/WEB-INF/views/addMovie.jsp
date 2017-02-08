<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/early/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />

<link rel="stylesheet" href="resources/css/style.css">

<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<title>Add New Movie</title>
</head>
<body>
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
						<li><a href="admin#/addUser">Add</a></li>
						<li><a href="#/users">User List</a></li>

					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Movie <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/FinalProject/addMovie">Add</a></li>
						<li><a href="admin#/movies">Movie List</a></li>

					</ul></li>
				<li><a href="/login">Login </a></li>
			</ul>


		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign Up</h3>
					</div>
					<div class="panel-body">


						<form:form action="addMovie" method="post" modelAttribute="movie"
							enctype="multipart/form-data">
							<table>
								<tr>
									<td>Enter Name:</td>
									<td><div class="form-group">
											<form:input class="form-control" type="text" name="movieName"
												id="movieName" path="movieName" value="${movie.movieName}"
												pattern="^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$" />
										</div></td>
								</tr>
								<tr>
									<td>Enter Director Name:</td>
									<td><div class="form-group">
											<form:input class="form-control" type="text" name="director"
												id="director" path="director" value="${movie.director}" required="required"/>
										</div></td>
								</tr>
								<tr>
									<td>Enter Description:</td>
									<td><div class="form-group">
											<form:textarea rows="5" cols="30" class="form-control"
												type="text" name="description" id="description"
												path="description" value="${movie.description}" />
										</div></td>
								</tr>
								<tr>
									<td>Enter Release Date:</td>
									<td><div class="form-group">
											<form:input class="form-control" type="date"
												name="releaseDate" id="releaseDate" path="releaseDate"
												value="${movie.releaseDate}" />
										</div></td>
								</tr>
								<tr>
									<td>Enter Actors Name:</td>
									<td><div class="form-group">
											<form:input class="form-control" type="text" name="actors"
												id="actors" path="actors" value="${movie.actors}" />
										</div></td>
								</tr>
								<tr>
									<td>Choose Cover Image:</td>
									<td><div class="form-group">
											<form:input class="input-group form-control" type="file"
												path="image" />
										</div></td>
								</tr>
								<tr>
									<td></td>
									<td><input class="btn btn-lg btn-warning btn-block"
										type="submit" value="submit"></td>
								</tr>
							</table>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- bootstrap js -->
	<script src="resources/js/bootstrap.min.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
	<script src="resources/js/app.js"></script>
	<script src="resources/js/userController.js"></script>
	<script src="resources/js/movieController.js"></script>

</body>
</html>