<!DOCTYPE html>
<body>
	<h1>{{header}}</h1>
	<form data-ng-submit="postData()">
		<h3>{{headerText}}</h3>
		<p>Name: <input type="text" data-ng-model="username"></p>
		<p>Email: <input type="email" data-ng-model="email"></p>
		<p>Password: <input type="password" data-ng-model="password"></p>
		<fieldset>
		    <legend>Address:</legend>
		    State: <input type="text" data-ng-model="state" /><br />
		    City: <input type="text" data-ng-model="city"><br />
		   	Street: <input type="text" data-ng-model="street"><br>
		   	Zip: <input type="text" data-ng-model="zip"><br />
		</fieldset>
		<input type="submit" id="submit" value="Submit" /><br />
		<h4>You submitted below data through post:</h4>
		 <pre>Form data ={{list}}</pre>
	</form>
</body>
</html>