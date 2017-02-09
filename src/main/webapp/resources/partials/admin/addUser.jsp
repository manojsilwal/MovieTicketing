<!DOCTYPE html>
<body>
	<div class="addForm">
		<h1>{{header}}</h1>
		<form data-ng-submit="postData()" id="registerForm">
			<h3>{{headerText}}</h3>
			<div class="form-group">
				<label for="name">Name</label> <input type="text"
					data-ng-model="username" class="form-control" id="name"
					placeholder="Username">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email"
					data-ng-model="email" class="form-control" id="email"
					placeholder="Email">
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					data-ng-model="password" class="form-control" id="password"
					placeholder="Password">
			</div>
			<div class="form-group">
				<fieldset>
					<legend>Address:</legend>

					<label for="state">State</label> <input type="text"
						data-ng-model="state" class="form-control" id="state"
						placeholder="State" /><br /> <label for="city">City</label> <input
						type="text" data-ng-model="city" class="form-control" id="city"
						placeholder="City"><br /> <label for="street">Street</label>
					<input type="text" data-ng-model="street" class="form-control"
						id="street" placeholder="Street"><br> <label
						for="zip">Zip</label> <input type="text" data-ng-model="zip"
						class="form-control" id="zip" placeholder="Zip"><br />
				</fieldset>
			</div>
			<input type="submit" id="submit" value="Submit"
				class="btn btn-default" /><br />
			<h4>You submitted below data through post:</h4>
			<pre>Form data ={{list}}</pre>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$("#registerForm").validate(
							{

								rules : {
									name : {
										required : true,
										minlength : 3
									},
									email : {
										required : true,
										email : true
									},
									password : {
										required : true,
										minlength : 5
									}
								},
								highlight : function(element) {
									$(element).closest('.form-group')
											.removeClass('has-success')
											.addClass('has-error');
								},
								unhighlight : function(element) {
									$(element).closest('.form-group')
											.removeClass('has-error').addClass(
													'has-success');
								}
							});
				});
	</script>


</body>
</html>