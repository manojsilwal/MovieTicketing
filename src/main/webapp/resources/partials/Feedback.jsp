<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h4>Send us Your valuable comments and feedback</h4>
			<br/>
			<h1>{{header}}</h1>
			<form name="userform" data-ng-submit="postData()" id="registerForm">
				<h3>{{headerText}}</h3>
				<div class="form-group">
					<label for="name">Name</label> <input type="text"
						data-ng-model="username" class="form-control" id="name"
						placeholder="Username">
					<div style="color: red;" id="nerrors"></div>
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="email"
						data-ng-model="email" class="form-control" id="email"
						placeholder="Email">
					<div style="color: red;" id="eerrors"></div>
				</div>
				<div class="form-group">
					<label for="phone">Phone </label> <input type="password"
						data-ng-model="phone" class="form-control" id="phone"
						placeholder="phone">
					<div style="color: red;" id="perrors"></div>
				</div>
				<div class="form-group">
					<label for="message">Message </label>
					<textarea cols="5" rows="5" data-ng-model="message"
						class="form-control" id="message" placeholder="message"></textarea>
					<div style="color: red;" id="perrors"></div>
				</div>


				<input type="submit" id="submit" value="Send"
					class="btn btn-default" />
			</form>
		</div>
	</div>
</div>