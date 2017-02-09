<div class="container-wrapper">
	<div class="container">
		<h1>{{header}}List</h1>

		<table class="table table-striped table-hover">

			<thead>
				<tr class="bg-success">
					<th>User Name</th>
					<th>Action</th>
				</tr>
			</thead>
			<tr ng-repeat="user in users" class="bg-success">
				<td>{{ $index + 1 }}</td>

				<td><a href="#/users/{{$index}}"> Name: {{ user.username }}</a></td>

				<td><a href="#/users/{{$index}}"> <span
						class="glyphicon glyphicon-info-sign"></span>
				</a> <a ng-click="delete(user.id)"><span class="glyphicon glyphicon-remove"></span> </a> <a
					href="#"> <span class="glyphicon glyphicon-pencil"></span>
				</a></td>
			</tr>
		</table>		
	</div>
</div>


