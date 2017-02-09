var movie = angular.module("movieTicketingApp");

movie.service("showService", showService);
 
showService.$inject = ['$http'];

movie.controller("showController", showController);

showController.$inject = ['$scope','$http', 'showService','$routeParams'];

function showController($scope, $http, showService, $routeParams){
	$scope.header = "Shows";
	$scope.list = [];
	$scope.whichShow = $routeParams.showId;
	$scope.shows = [];
	$scope.show = $scope.shows[$scope.whichShow];
		

	console.log();
	//delete movies
	$scope.delete = function(index){
		showService.delete(index).success(function(data, status, headers, config) {
			console.log(data);
			location.href = "/FinalProject/admin#/shows";
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	
	//Update movies
	$scope.put = function(){
		
		var show = {
				"startTime" : $scope.startTime,
				"endTime" : $scope.endTime ,
				"language" : $scope.language,
				"totalAvailableSheet" : $scope.totalAvailableSheet
		};
		
		showService.put(show).success(function(data, status, headers, config) {
			console.log(data);
			location.href = "/FinalProject/admin#/shows";
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	//Post movie
	$scope.postData = function(){
		
		var show = {
				"startTime" : $scope.startTime,
				"endTime" : $scope.endTime ,
				"language" : $scope.language,
				"totalAvailableSheet" : $scope.totalAvailableSheet
		};
		
		showService.submit(show).success(function(data, status, headers, config) {
			$scope.list.push(data);
			location.href = "/FinalProject/admin#/shows";
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	};
	
	
	//get movie list
	$scope.getShows = function(){
		showService.getShows().success(function(data, status, headers, config){
        $scope.shows = data;
        console.log(data);
	    }).
	    error(function(data, status, headers, config) {
	    });
			
	
	};
	
	$scope.getShows();

	
}

	

function showService($http){
	var service = this;
	
	itemList = [];
		
	service.getShows = function() {           
        return $http({method: 'GET', url: 'show'});
	}
    
    service.submit = function(movie) {
    	return $http.post('show', movie);
	};
    
	service.delete = function(index){
		console.log("service"+index);
		return $http.delete('show/'+index);
	}
	
	service.update = function(movie){
		return $http.put('show', movie);
	}
    
}