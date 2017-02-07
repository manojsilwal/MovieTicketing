var movie = angular.module("frontApp");

movie.service("movieUIService", movieUIService);
 
movieUIService.$inject = ['$http'];

movie.controller("movieUIController", movieUIController);

movieUIController.$inject = ['$scope','$http', 'movieUIService','$routeParams'];


function movieUIController($scope, $http, movieUIService, $routeParams){
	
	$scope.whichMovie = $routeParams.movieId;
	$scope.movies = [];
	
	
	$scope.selectedMovie = $scope.movies[$scope.whichMovie];
	
	console.log($scope.movies[$scope.whichMovie]);
	
	$scope.movie.actors = $scope.movie.actors;
	
	//add Actors
	$scope.addActors = function(){
		$scope.movie.actors.push($scope.actor);
		$scope.actor = "";
	};
	
	
	//get movie list
	var moviesRecieved = function(movies) {
		$scope.movies = movies;
	};
	movieService.getMovies(moviesRecieved);

	
}

	

function movieUIService($http){
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
	
 
}
