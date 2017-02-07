<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Movie Ticketing</title>
  <meta name="viewport" content="width=device-width, user-scalable=no">
  <link href='https://fonts.googleapis.com/css?family=Lato:400,100,700,900' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="resources/css/style.css">
  

<body  data-ng-app='movieTicketingApp'>
     
        <h2>Movie Ticketing</h2>
        <ul>
            <li><a href="#/">Home</a></li>
            <li><a href="#/addMovie">Add Movie</a></li>
            <li><a href="#/movies">Movie List</a></li>
            
            <li><a href="#/users">User List</a></li>
            <li><a href="#/addUser">Add User</a></li>
              
        </ul>
         
        <div ng-view></div>
        
        
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-route.js"></script>
   <script src="resources/js/app.js"></script>
   <script src="resources/js/movieController.js"></script>
    <script src="resources/js/userController.js"></script>

     
    </body>
</html>
