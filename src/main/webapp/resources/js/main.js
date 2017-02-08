angular.module('frontApp',['ngRoute'])

.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/home.jsp',
    	controller: 'movieController'
    	})
    	
    .when('/theater',{
    	templateUrl:'resources/partials/MyTheaters.jsp',
    	controller: 'movieController'
    	})
    
    .when('/booknow',{
    	templateUrl:'resources/partials/BookNow.jsp',
    	controller: 'movieController'
    	})
    .otherwise({redirectTo:'/'});
    
}]);