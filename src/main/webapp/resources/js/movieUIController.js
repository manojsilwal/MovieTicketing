var movie = angular.module("frontApp");

movie.service("movieService", movieService);

movie.service("showService", showService);

movie.service("theaterService", theaterService);
 
movie.service("ticketService", ticketService);

showService.$inject = ['$http'];

ticketService.$inject = ['$http'];

theaterService.$inject = ['$http'];

movieService.$inject = ['$http'];

movie.controller("movieController", movieController);

movieController.$inject = ['$scope','$http', 'movieService','$routeParams'
	,'ticketService','theaterService','showService'];


//------------movie controller -----------------------

function movieController($scope, $http, movieService, $routeParams, ticketService, theaterService, showService){
	
	$scope.movieIndex = $routeParams.movieId;
	$scope.showIndex = $routeParams.showId;
	$scope.theaterIndex = $routeParams.theaterId;
	
	console.log("movieIndex = "+$scope.movieIndex+" showIndex = "+$scope.showIndex+" $scope.theaterIndex "+ $scope.theaterIndex);
	
	$scope.shows = [];
	
	$scope.movies = [];
	
	$scope.theaters = [];
	
	$scope.setMovie = function(movie){
		ticketService.setMovie(movie);
	}
	
	$scope.setTheater = function(theater){
		console.log(theater);
		ticketService.setThreater(theater);
		console.log(theater);
		ticketService.sendTicket();
	}
	
	$scope.setShow = function(show){
		console.log(show);
		ticketService.setShow(show);
		console.log(ticketService.getShow());
	}
	
	$scope.movie = $scope.movies[$scope.whichMovie];
	
	console.log($scope.movies[$scope.whichMovie]);
		
	//get Movies data
	function setMovies(values){
		$scope.movies = values;
	}
	movieService.getMovies(setMovies);
	
	
	//get Show data
	function setShows(values){
		$scope.shows = values;
	}
	
	showService.getShows(setShows);
	
	//get Show data
	function setTheaters(values){
		$scope.theaters = values;
	}
	
	theaterService.getTheaters(setTheaters);

}


function ticketService($http){
	var service = this;
	
	service.setMovie = function(movie){
		service.movie = movie;
	}
	
	service.getMovie = function(){
		return service.movie;
	}
	
	service.getThreater = function(){
		return service.theater;
	}
	
	service.setThreater = function(theater){
		service.theater = theater;
	}
	
	service.setShow = function(show){
		service.show = show;
	}
	
	service.getShow = function(){
		return service.show;
	}
	
	
	//Post movie
	service.sendTicket = function(){
		
		service.ticket = {
				"theater" : service.theater,
				"movie" : service.movie ,
		};
		
		service.postData(service.ticket);
	
	}
	
	service.postData = function(ticket){
		$http.post('tickets', ticket).success(function(data, status, headers, config) {
			//$scope.list.push(data);
		}).error(function(data, status, headers, config) {
			alert( "Exception details: " + JSON.stringify({data: data}));
		});

	}
}



function theaterService($http){
	var service = this;
	
	var itemList = [];
	
	service.getItems = function() {
        return itemList;
    }

    service.setItems = function(value) {
    	itemList = value;
    	console.log(itemList);
    }
	
	service.getTheaters = function(init) {           
        return $http({method: 'GET', url: 'theater'}).success(function(data, status, headers, config){
        	service.setItems(data);
            console.log(data);
            init(data);
    	    }).
    	    error(function(data, status, headers, config) {
    	    });
	}
}

function movieService($http){
	var service = this;
	
	var itemList = [];
		
	service.getItems = function() {
        return itemList;
    }

    service.setItems = function(value) {
    	itemList = value;
    	console.log(itemList);
    }
	
	service.getMovies = function(init) {           
        return $http({method: 'GET', url: 'movies'}).success(function(data, status, headers, config){
        	service.setItems(data);
            console.log(data);
            init(data);
    	    }).
    	    error(function(data, status, headers, config) {
    	    });
	}
    
	service.submit = function(movie) {
    	return $http.post('ticket', ticket);
	};
  
    
}


function showService($http){
	
	var service = this;
	
	var itemList = [];
	
	service.getItems = function() {
        return itemList;
    }

    service.setItems = function(value) {
    	itemList = value;
    	console.log(itemList);
    }
	
	service.getShows = function(init) {           
        return $http({method: 'GET', url: 'show'}).success(function(data, status, headers, config){
        	service.setItems(data);
            console.log(data);
            init(data);
    	    }).
    	    error(function(data, status, headers, config) {
    	    });
	}
	
}