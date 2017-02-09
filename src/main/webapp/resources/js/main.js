angular.module('frontApp', [ 'ngRoute' ])

.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'resources/partials/home.jsp',
		controller : 'movieController'
	})
	.when('/showtimes', {
		templateUrl : 'resources/partials/ShowTime.jsp',
		controller : 'movieController'
	})
	.when('/theater/:movieId',{
    	templateUrl:'resources/partials/MyTheaters.jsp',
    	controller: 'movieController'
    	})
    
    .when('/booknow/:theaterId',{
    	templateUrl:'resources/partials/BookNow.jsp',
    	controller: 'movieController'
    	})
	.when('/aboutus', {
		templateUrl : 'resources/partials/AboutUs.jsp',
		controller : 'movieController'
	})
	
	.when('/checkOut', {
		templateUrl : 'resources/partials/checkOut.jsp',
		controller : 'movieController'
	})
	
	.when('/feedback', {
		templateUrl : 'resources/partials/Feedback.jsp',
		controller : 'movieController'
	})
	
	.when('/signin', {
		templateUrl : 'resources/partials/usersignin.jsp',
		controller : 'movieController'
	})
	
	.otherwise({
		redirectTo : '/'
	});

} ]);
