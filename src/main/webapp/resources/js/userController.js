var user = angular.module("movieTicketingApp");

user.service("userService", userService);
 
userService.$inject = ['$http'];

user.controller("userController", userController);

userController.$inject = ['$scope','$http', 'userService','$routeParams'];

function userController($scope, $http, userService, $routeParams){
	$scope.header = "User";
	$scope.list = [];
	$scope.whichUser = $routeParams.userId;
	$scope.users = [];	
		
	//delete movies
	$scope.delete = function(index){
		userService.delete(index).success(function(data, status, headers, config) {
			window.location.href="/FinalProject/admin#/users";
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	
	//Update movies
	$scope.put = function(){
		
		var user = {
			    "email": $scope.email,
			    "username": $scope.username,
			    "password": $scope.password,
			    "enabled": false,
			    "address": {
			      "street": $scope.street,
			      "city": $scope.city,
			      "state": $scope.state,
			      "zip": $scope.zip,
			    }
			  };
		userService.put(user).success(function(data, status, headers, config) {
			console.log(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	//Post movie
	$scope.postData = function(){
		
		var user = {
			    "email": $scope.email,
			    "username": $scope.username,
			    "password": $scope.password,
			    "enabled": false,
			    "address": {
			      "street": $scope.street,
			      "city": $scope.city,
			      "state": $scope.state,
			      "zip": $scope.zip,
			    }
			  };
		
		userService.submit(user).success(function(data, status, headers, config) {
			$scope.list.push(data);
			location.href="/FinalProject/admin#/users";
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	};
	
	
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
    
    service.submit = function(user) {
    	return $http.post('user', user);
	};
    
	service.delete = function(index){
		console.log("service"+index);
		return $http.delete('user/'+index);
	}
	
	service.update = function(user){
		return $http.put('user', user);
	}
    
}
