var movie = angular.module("movieTicketingApp");

movie.service("movieService", movieService);
 
movieService.$inject = ['$http'];

movie.controller("movieController", movieController);

movieController.$inject = ['$scope','$http', 'movieService','$routeParams'];


function movieController($scope, $http, movieService, $routeParams){
	$scope.header = "Movie";
	$scope.list = [];
	$scope.whichMovie = $routeParams.movieId;
	$scope.movies = [];
	
	
	
	$scope.selectedMovie = $scope.movies[$scope.whichMovie];
	
	console.log($scope.movies[$scope.whichMovie]);
	
	$scope.movie = {
			"movieName" : '',
			"director" : '',
			"actors" : '',
			"releaseDate" : ''
		}
	
	$scope.movie.actors = $scope.movie.actors;
	
	//add Actors
	$scope.addActors = function(){
		$scope.movie.actors.push($scope.actor);
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
		movieService.put(movie).success(function(data, status, headers, config) {
			console.log(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	}
	
	//Post movie
	$scope.postData = function(){
		$scope.movie.actors.push($scope.actor);
		movieService.submit($scope.movie).success(function(data, status, headers, config) {
			$scope.list.push(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});
	};
	
	
	//get movie list
	var moviesRecieved = function(movies) {
		$scope.movies = movies;
	};
	movieService.getMovies(moviesRecieved);

	
}

	

function movieService($http){
	var service = this;
	
	this.itemList = [];
		
	service.getMovies = function(cb) {
        return $http({method: 'GET', url: 'movies'}).success(function(data, status, headers, config){
        	this.itemList = data;
        	cb(this.itemList);
	    }.bind(this)).
	    	error(function(data, status, headers, config) {
	    });
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
    
}
