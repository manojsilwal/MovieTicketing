angular.module('frontApp',['ngRoute'])

.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/home.jsp',
    	controller: 'movieController'
    	})
    	
    .when('/bookNow',{
    	templateUrl:'resources/partials/bookNow.jsp',
    	controller: 'movieController'
    	})
	
    .otherwise({redirectTo:'/'});
    
}]);