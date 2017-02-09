var user = angular.module("frontApp");

user.service("userService", userService);
 
userService.$inject = ['$http'];

user.controller("userController", userController);

userController.$inject = ['$scope','$http', 'userService','$routeParams'];

function userController($scope, $http, userService, $routeParams){
	$scope.header = "User";
	$scope.list = [];
	$scope.whichUser = $routeParams.userId;
	$scope.users = [];	
		

	//get movie list
	$scope.getUsers = function(){
		userService.getUsers().success(function(data, status, headers, config){
			console.log("getUser"+data);
        $scope.users = data;
	    }).
	    error(function(data, status, headers, config) {
	    });
			
	
	};
	
	$scope.getUsers();

	
}

	

function userService($http){
	var service = this;
	
	itemList = [];
		
	service.getUsers = function() {   
		console.log("getUsers service");
        return $http({method: 'GET', url: 'user'});
	}
    
    
}
