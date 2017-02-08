<!DOCTYPE html>
<body>	
	<div class="addForm">
		<h1>Add Theater</h1>
		<form data-ng-submit="postData()">
			<div class="form-group">
				<label for="name">Theater Name: </label> 
				<input type="text" data-ng-model="tname" class="form-control" id="name" placeholder="Theater Name">
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

			<div class="form-group">
				<label for="totalSeats">Total Seats </label> 
				<input type="text" data-ng-model="totalSeats" class="form-control" id="totalSeats" placeholder="Actors Name" /> <br />
			</div>
			<input type="submit" id="submit" value="Submit"
				class="btn btn-default" /><br>
			<h4>You submitted below data through post:</h4>
			<pre>Form data ={{list}}</pre>
		</form>
	</div>

</body>
</html>