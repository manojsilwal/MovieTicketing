angular.module('movieTicketingApp',['ngRoute'])

.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/movieList.jsp',
    	controller: 'movieController'
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
	
	
	.when('/theaters',{
		templateUrl:'resources/partials/theaterList.jsp',
		controller : 'theaterController'
	})
	
	.when('/addTheater',{
		templateUrl:'resources/partials/addTheater.jsp',
		controller : 'theaterController'
	})
	
	
	.when('/updateTheater/:theaterId',{
		templateUrl:'resources/partials/addTheater.jsp',
		controller : 'theaterController'
	})
	
	 .when('/theaters/:theaterId',{
		templateUrl:'resources/partials/theater.jsp',
		controller : 'theaterController'
	})
	
	
	.when('/shows',{
		templateUrl:'resources/partials/showList.jsp',
		controller : 'showController'
	})
	
	.when('/addShow',{
		templateUrl:'resources/partials/addShow.jsp',
		controller : 'showController'
	})
	
	
	.when('/updateShow/:showId',{
		templateUrl:'resources/partials/addShow.jsp',
		controller : 'showController'
	})
	
	 .when('/shows/:showId',{
		templateUrl:'resources/partials/show.jsp',
		controller : 'showController'
	})
	
	
    .otherwise({redirectTo:'/'});
    
}]);