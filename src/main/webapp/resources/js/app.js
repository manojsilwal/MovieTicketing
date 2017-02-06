var myApp = angular.module('myApp',['ngRoute']);


angular.module('routingDemoApp',['ngRoute'])
.config(['$routeProvider', function($routeProvider){
    $routeProvider
    .when('/',{
    	templateUrl:'resources/partials/login.jsp'
    	})
    .when('/computers',{template:'This is the computers Route'})
    .when('/printers',{template:'This is the printers Route'})
    .otherwise({redirectTo:'/'});
}]);