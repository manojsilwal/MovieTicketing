var movie = angular.module("movieTicketingApp");

movie.service("movieService", movieService);
 
movieService.$inject = ['$http'];

movie.controller("movieController", movieController);


movieController.$inject = ['$scope','$http', 'movieService','$routeParams'];

function movieController($scope, $http, movieService, $routeParams){
	$scope.header = "Movie";
	$scope.list = [];
	$scope.actors = [];
	$scope.movies = [];
	
	//add Actors
	$scope.addActors = function(){
		$scope.actors.push($scope.actor);
		$scope.actor = "";
	};
	
	
	
	//delete movies
	$scope.delete = function(index){
		movieService.delete(index).success(function(data, status, headers, config) {
			console.log(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	
	//Update movies
	$scope.put = function(){
		
		var movie = {
				"movieName" : $scope.movieName,
				"director" : $scope.director ,
				"actors" : $scope.actors,
				"releaseDate" : $scope.date
		};
		
		movieService.put(movie).success(function(data, status, headers, config) {
			console.log(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	//Post movie
	$scope.postData = function(){
		
		var movie = {
				"movieName" : $scope.movieName,
				"director" : $scope.director ,
				"actors" : $scope.actors,
				"releaseDate" : $scope.date,
				"image": $scope.myFile
		};
		
		movieService.submit(movie).success(function(data, status, headers, config) {
			$scope.list.push(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	};
	
	
	//get movie list
	$scope.getMovies = function(){
		movieService.getMovies().success(function(data, status, headers, config){
        $scope.movies = data;
        console.log(data);
	    }).
	    error(function(data, status, headers, config) {
	    });
			
	
	};
	
	$scope.getMovies();
	
	
}

function movieService($http){
	var service = this;
	
	itemList = [];
		
	service.getMovies = function() {           
        return $http({method: 'GET', url: 'movies'});
	}
    
    service.submit = function(movie) {
    	return $http.post('movies', movie);
	};
    
	service.delete = function(index){
		console.log("service"+index);
		return $http.delete('movies/'+index);
	}
	
	service.update = function(movie){
		return $http.put('movies', movie);
	}
    
	service.uploadFileToUrl = function(file, uploadUrl){
	       var fd = new FormData();
	       fd.append('file', file);
	    
	       $https.post(uploadUrl, fd, {
	          transformRequest: angular.identity,
	          headers: {'Content-Type': undefined}
	       })
	    
	       .success(function(){
	       })
	    
	       .error(function(){
	       });
	    }
	
}