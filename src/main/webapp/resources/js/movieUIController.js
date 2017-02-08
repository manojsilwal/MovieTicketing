var movie = angular.module("frontApp");

movie.service("movieService", movieService);
 
movieService.$inject = ['$http'];

movie.controller("movieController", movieController);

movieController.$inject = ['$scope','$http', 'movieService','$routeParams'];

function movieController($scope, $http, movieService, $routeParams){
	$scope.whichMovie = $routeParams.movieId;
	$scope.showTime = [];
	$scope.movies = [];
	$scope.movie = $scope.movies[$scope.whichMovie];
	
	console.log($scope.movies[$scope.whichMovie]);
	
	
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
    
  
    
}