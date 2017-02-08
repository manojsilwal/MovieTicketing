<!DOCTYPE html>

<script type="text/javascript">
	$(document).ready(function() {

		$(".date").datepicker({
			changeYear : true,
			changeMonth : true,
			yearRange : "1990:2017"
		});
	})
</script>
<body>
	<h1>{{header}}</h1>
	<form data-ng-submit="postData()">
		<h3>{{headerText}}</h3>
		<p>
			Language : <input type="text" data-ng-model="language">
		</p>
		<p>
			Total Available Sheet :<input type="text" data-ng-model="totalAvailableSheet">
		</p>
		<p>
			Start time :<input type="date" class="date" data-ng-model="startTime" />
		</p>
		<p>
			End Time :<input class="" class="date" type="date" data-ng-model="endTime">
		</p>
				
		<input type="submit" id="submit" value="Submit" /><br>
		
		<h4>You submitted below data through post:</h4>
		<pre>Form data ={{list}}</pre>
	</form>


</body>
</html>