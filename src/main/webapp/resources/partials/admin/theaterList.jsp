<div class="container-wrapper">
	<div class="container">
		<h1>Theater List</h1>

		<table class="table table-striped table-hover">

			<thead>
				<tr class="bg-success">
					<th>User Name</th>
					<th>Action</th>
				</tr>
			</thead>
			<tr ng-repeat="theater in theaters" class="bg-success">
				<td>{{ $index + 1 }}</td>

				<td>
					<a href="#/theaters/{{$index}}">
						<p>Name: {{theater.tname}}</p>
					</a>
				</td>

				<td>
					<a href="#/theaters/{{$index}}"> 
						<span class="glyphicon glyphicon-info-sign"></span>
					</a> 
					<a data-ng-href="index#/theaters" ng-click = "delete(theater.theaterId)">
						<span class="glyphicon glyphicon-remove"></span> 
					</a> 
					<a href="#"> 
						<span class="glyphicon glyphicon-pencil"></span>
					</a>
				</td>
			</tr>
		</table>
	</div>
</div>





