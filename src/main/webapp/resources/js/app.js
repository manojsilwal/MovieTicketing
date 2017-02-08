angular.module('movieTicketingApp',['ngRoute'])

.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/admin/movieList.jsp',
    	controller: 'movieController'
    	})
    	
    .when('/movies',{
    	templateUrl:'resources/partials/admin/movieList.jsp',
    	controller: 'movieController'
    	})
    .when('/addMovie',{
    	templateUrl:'resources/partials/admin/addMovie.jsp',
    	controller: 'movieController'
    	})
    .when('/movies/:movieId',{
		templateUrl:'resources/partials/admin/movie.jsp',
		controller : 'movieController'
	})
	
	.when('/updateMovie/:movieId',{
		templateUrl:'resources/partials/admin/addMovie.jsp',
		controller : 'movieController'
	})
	
	
	.when('/users',{
		templateUrl:'resources/partials/admin/userList.jsp',
		controller : 'userController'
	})
	
	.when('/addUser',{
		templateUrl:'resources/partials/admin/addUser.jsp',
		controller : 'userController'
	})
	
	
	.when('/updateUser/:userId',{
		templateUrl:'resources/partials/admin/addUser.jsp',
		controller : 'userController'
	})
	
	 .when('/users/:userId',{
		templateUrl:'resources/partials/admin/user.jsp',
		controller : 'userController'
	})
	
	
	.when('/theaters',{
		templateUrl:'resources/partials/admin/theaterList.jsp',
		controller : 'theaterController'
	})
	
	.when('/addTheater',{
		templateUrl:'resources/partials/admin/addTheater.jsp',
		controller : 'theaterController'
	})
	
	
	.when('/updateTheater/:theaterId',{
		templateUrl:'resources/partials/admin/addTheater.jsp',
		controller : 'theaterController'
	})
	
	 .when('/theaters/:theaterId',{
		templateUrl:'resources/partials/admin/theater.jsp',
		controller : 'theaterController'
	})
	
	
	.when('/shows',{
		templateUrl:'resources/partials/admin/showList.jsp',
		controller : 'showController'
	})
	
	.when('/addShow',{
		templateUrl:'resources/partials/admin/addShow.jsp',
		controller : 'showController'
	})
	
	
	.when('/updateShow/:showId',{
		templateUrl:'resources/partials/admin/addShow.jsp',
		controller : 'showController'
	})
	
	 .when('/shows/:showId',{
		templateUrl:'resources/partials/admin/show.jsp',
		controller : 'showController'
	})
	
	
    .otherwise({redirectTo:'/'});
    
}]);