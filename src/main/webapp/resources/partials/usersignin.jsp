<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1>{{header}}</h1>
			<form name="userform" data-ng-submit="postData()" id="registerForm">
				<h3>{{headerText}}</h3>
				<div class="form-group">
					<label for="name">Name</label> <input type="text"
						data-ng-model="username" class="form-control" id="name"
						placeholder="Username">
					<div style="color: red;" id="rerrors"></div>
				</div>
				
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						data-ng-model="password" class="form-control" id="password"
						placeholder="Password">
					<div style="color: red;" id="rerrors"></div>
				</div>
				
				<input type="submit" id="submit" value="Sign In"
					class="btn btn-default" /> 'OR'
					
					<a class="btn btn-default" href="#/register">Register Now?</a><br />
			</form>
		</div>
	</div>
</div>