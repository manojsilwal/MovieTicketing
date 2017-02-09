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
												id="movieName" path="movieName" value="${movie.movieName}" />
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