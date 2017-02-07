angular.module('frontApp',['ngRoute'])

.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/home.jsp',
    	controller: 'movieUIController'
    	})
    	
    .when('/movies',{
    	templateUrl:'resources/partials/movieList.jsp',
    	controller: 'movieController'
    	})
    .when('/addMovie',{
    	templateUrl:'resources/partials/addMovie.jsp',
    	controller: 'movieController'
    	})
    .when('/movies/:movieId',{
		templateUrl:'resources/partials/movie.jsp',
		controller : 'movieController'
	})
	
	
	.when('/users',{
		templateUrl:'resources/partials/userList.jsp',
		controller : 'userController'
	})
	
	.when('/addUser',{
		templateUrl:'resources/partials/addUser.jsp',
		controller : 'userController'
	})
	
	
	.when('/updateUser/:userId',{
		templateUrl:'resources/partials/addUser.jsp',
		controller : 'userController'
	})
	
	 .when('/users/:userId',{
		templateUrl:'resources/partials/user.jsp',
		controller : 'userController'
	})
	
    .otherwise({redirectTo:'/'});
    
}]);