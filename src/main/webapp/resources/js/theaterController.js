var theater = angular.module("movieTicketingApp");

theater.service("theaterService", theaterService);
 
theaterService.$inject = ['$http'];

theater.controller("theaterController", theaterController);

theaterController.$inject = ['$scope','$http', 'theaterService','$routeParams'];

function theaterController($scope, $http, theaterService, $routeParams){
	$scope.header = "Show";
	$scope.list = [];
	$scope.whichTheater = $routeParams.theaterId;
	$scope.theaters = [];
	$scope.theater = $scope.theaters[$scope.whichTheater];
		
	//delete movies
	$scope.delete = function(index){
		theaterService.delete(index).success(function(data, status, headers, config) {
			console.log(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	//Update movies
	$scope.put = function(){
		
		var theater = {
				"tname" : $scope.tname,
				"address" : $scope.address ,
				"totalSeats" : $scope.totalSeats,
		};
		
		theaterService.put(theater).success(function(data, status, headers, config) {
			console.log(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	//Post movie
	$scope.postData = function(){
		
		var theater = {
				"tname" : $scope.tname,
				"address" : $scope.address ,
				"totalSeats" : $scope.totalSeats,
				"address": {
				      "street": $scope.street,
				      "city": $scope.city,
				      "state": $scope.state,
				      "zip": $scope.zip,
				    }
		};
		
		console.log(theater);
		
		theaterService.submit(theater).success(function(data, status, headers, config) {
			$scope.list.push(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	};
	
	
	//get movie list
	$scope.getTheaters = function(){
		theaterService.getTheaters().success(function(data, status, headers, config){
        $scope.theaters = data;
        console.log(data);
	    }).
	    error(function(data, status, headers, config) {
	    });
			
	
	};
	
	$scope.getTheaters();

	
}

	

function theaterService($http){
	var service = this;
	
	itemList = [];
		
	service.getTheaters = function() {           
        return $http({method: 'GET', url: 'theater'});
	};
    
    service.submit = function(theater) {
    	console.log(theater);
    	return $http.post('theater', theater);
	};
    
	service.delete = function(index){
		console.log("service"+index);
		return $http.delete('theater/'+index);
	}
	
	service.update = function(movie){
		return $http.put('theater', movie);
	}
    
}