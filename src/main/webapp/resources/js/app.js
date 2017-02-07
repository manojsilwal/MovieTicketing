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
	.when('/updateMovie/:movieId',{
		templateUrl:'resources/partials/addMovie.jsp',
		controller : 'movieController'
	})
    .otherwise({redirectTo:'/'});
    
}]);