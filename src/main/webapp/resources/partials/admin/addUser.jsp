<!DOCTYPE html>
<body>
	<div class="col-md-4 col-md-offset-4 addForm">
		<h1>{{header}}</h1>
		<form name="userform" data-ng-submit="postData()" id="registerForm">
			<h3>{{headerText}}</h3>
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					data-ng-model="username" class="form-control" id="name"
					placeholder="Username">
				<div style="color: red;" id="rerrors">aaa</div>
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email"
					data-ng-model="email" class="form-control" id="email"
					placeholder="Email">
				<div style="color: red;" id="rerrors"></div>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					data-ng-model="password" class="form-control" id="password"
					placeholder="Password">
				<div style="color: red;" id="rerrors"></div>
			</div>
			<div class="form-group">
				<fieldset>
					<legend>Address:</legend>

					<label for="state">State</label> <input type="text"
						data-ng-model="state" class="form-control" id="state"
						placeholder="State" />
					<div style="color: red;" id="rerrors"></div>

					<br /> <label for="city">City</label> <input type="text"
						data-ng-model="city" class="form-control" id="city"
						placeholder="City">
					<div style="color: red;" id="rerrors"></div>

					<br /> <label for="street">Street</label> <input type="text"
						data-ng-model="street" class="form-control" id="street"
						placeholder="Street">
					<div style="color: red;" id="rerrors"></div>

					<br> <label for="zip">Zip</label> <input type="text"
						data-ng-model="zip" class="form-control" id="zip"
						placeholder="Zip"><br />
					<div style="color: red;" id="rerrors"></div>
				</fieldset>
			</div>
			<input type="submit" id="submit" value="Submit"
				class="btn btn-default" /><br />
			<h4>You submitted below data through post:</h4>
			<pre>Form data ={{list}}</pre>
		</form>
	</div>
	

</body>
</html>