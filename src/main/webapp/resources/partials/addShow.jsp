<!DOCTYPE html>
<body>

	<h1>{{header}}</h1>
	<form data-ng-submit="postData()">
		<h3>{{headerText}}</h3>	

		<p>
			Language : <input type="text" data-ng-model="language">
		</p>
		<p>
			Total Available Sheet :<input type="text"
				data-ng-model="totalAvailableSheet">
		</p>


		<p>
			Start time :<input type="text" class="form-control" id="datetimepic"
				data-ng-model="startTime" />
		</p>
		<p>
			End Time :<input class="form-control" id="datetimepic1" type="text"
				data-ng-model="endTime">
		</p>

		<input type="submit" id="submit" value="Submit" /><br>

		<h4>You submitted below data through post:</h4>
		<pre>Form data ={{list}}</pre>
	</form>

	<script type="text/javascript">
		$("#datetimepic").datetimepicker();
	</script>

	


</body>
</html>