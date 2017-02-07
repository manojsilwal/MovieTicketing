<div>
        <div>
        	<h1>{{header}}List</h1>
            <ul>
				<li ng-repeat="user in users">
					<div>
						<a href="#/users/{{$index}}">
							<p>Name: {{user.username}}</p>
						</a>
						<button data-ng-click="delete(user.id)">Delete</button>
						<button data-ng-click="update($index)">Update</button>
					</div>
				</li>
			</ul>
        </div>
    </div>


