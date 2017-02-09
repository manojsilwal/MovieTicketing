<!DOCTYPE html>
<body>

	<h1>{{header}}</h1>
	<form data-ng-submit="postData()" class="registerShow">
		<h3>{{headerText}}</h3>

		<p>
			Language : <input type="text" id="language" class="form-control" data-ng-model="language">
		</p>
		<p>
			Total Available Sheet :<input id="sheets" class="form-control" type="text"
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

		<input type="submit" id="submit" class="btn btn-default" value="Submit" /><br>

		<h4>You submitted below data through post:</h4>
		<pre>Form data ={{list}}</pre>
	</form>

	<script type="text/javascript">
		$("#datetimepic").datetimepicker();

		$(".registerShow").validate(
				{

					rules : {
						language : {
							required : true,
							minlength : 3
						},
						seats : {
							required : true,
							minlength : 2
						}
					},
					highlight : function(element) {
						$(element).closest('.form-group').removeClass(
								'has-success').addClass('has-error');
					},
					unhighlight : function(element) {
						$(element).closest('.form-group').removeClass(
								'has-error').addClass('has-success');
					}
				});
	</script>

	<script type="text/javascript">
		$("#datetimepic1").datetimepicker();
	</script>



</body>
</html>