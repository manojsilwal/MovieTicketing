angular.module('frontApp',['ngRoute'])

.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/home.jsp',
    	controller: 'movieController'
    	})
    	
    .when('/theater/:movieId',{
    	templateUrl:'resources/partials/MyTheaters.jsp',
    	controller: 'movieController'
    	})
    
    .when('/booknow/:theaterId',{
    	templateUrl:'resources/partials/BookNow.jsp',
    	controller: 'movieController'
    	})
    .otherwise({redirectTo:'/'});
    
}]);