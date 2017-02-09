var movie = angular.module("frontApp");

movie.service("movieService", movieService);

movie.service("showService", showService);

movie.service("loginService", loginService);

movie.service("theaterService", theaterService);
 
movie.service("ticketService", ticketService);

//movie.service("userService", userService);

showService.$inject = ['$http'];

ticketService.$inject = ['$http'];

theaterService.$inject = ['$http'];

movieService.$inject = ['$http'];

//userService.$inject = ['$http'];

movie.controller("movieController", movieController);

movieController.$inject = ['$scope','$http', 'movieService','$routeParams'
	,'ticketService','theaterService','showService','loginService'];


//------------movie controller -----------------------

function movieController($scope, $http, movieService, $routeParams, ticketService, theaterService, showService, userService){
	
	$scope.users = [];
	
	$scope.seats = [];
	
	$scope.loginCheck = function(){
		$scope.user = {
				"email" : '',
				"password" : ''
		};
		if(loginService.loginCheck($scope.user,$scope.users)){
			alert("sucess");
		}
		
	}
	
	$scope.createTicket = function(){
		ticketService.postData();
	}
	
	$scope.getTicket = function(){
		var totalPrice;
		$scope.ticket = ticketService.getTicket();
		
		$scope.seat = ticketService.getSeat();
		
		angular.forEach($scope.seat, function(value, key){
			totalPrice = 300;
		   });
				
		$scope.ticket.price = totalPrice;
		
		console.log($scope.ticket);
		console.log($scope.price);
		
		return $scope.ticket;
	}
	
	
	
	$scope.seatCheck = function(){
		var seat = document.getElementById("seats");
		 for (i = 0; i < seat.length; i++) {
		        if (seat[i].checked) {
		        	$scope.seats.push(seat[i].value);
		        }      
		 }
		 ticketService.setSeat($scope.seats);
		 ticketService.setTicket();
		 $scope.getTicket();
	}
	
	
	$scope.shows = [];
	
	$scope.movies = [];
	
	$scope.theaters = [];
	
	$scope.setMovie = function(movie){
		ticketService.setMovie(movie);
	}
	
	$scope.setTheater = function(theater){
		ticketService.setThreater(theater);
		$scope.movie = ticketService.getMovie();
		console.log($scope.movie);
		return ticketService.getMovie();
	}
	
	$scope.setShow = function(show){
		console.log(show);
		ticketService.setShow(show);
		console.log(ticketService.getShow());
	}
		
		
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
	
	
	/*function setUsers(values){
		$scope.users = values;
	}
	
	userService.getUsers();*/
	
	//get Show data
	function setTheaters(values){
		$scope.theaters = values;
	}
	
	theaterService.getTheaters(setTheaters);
	
	
	
	
	
}

function ticketService($http){
	var service = this;
	
	service.setSeat = function(seat){
		service.seat = seat;
	}
	
	service.getSeat = function(){
		return service.seat;
	}
	
	service.getTicket = function(){
		return service.ticket;
	} 
	
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
	service.setTicket = function(){
		
		service.ticket = {
				"theater" : service.theater,
				"movie" : service.movie ,
				"seat" :	service.seat
		};
		
	
	}
	
	service.postData = function(){
		$http.post('tickets', service.ticket).success(function(data, status, headers, config) {
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
         $http({method: 'GET', url: 'show'}).success(function(data, status, headers, config){
        	service.setItems(data);
            console.log(data);
            init(data);
    	    }).
    	    error(function(data, status, headers, config) {
    	    });
	}
	
}

/*function userService($http){
	var service = this;
	service.getUsers = function(){
		
	}
}
*/

function loginService($http){
		
	
		var service = this;
				
		service.loginCheck = function(user, userList){
			userList.forEach(
					function(value) {
						if(value.username.equals(user.email)&&value.password.equals(user.password)){
							service.loggedIn = true;
							return true;
						}
					}
				);
			service.loggedIn = false;
			return false;
		}
		
}
