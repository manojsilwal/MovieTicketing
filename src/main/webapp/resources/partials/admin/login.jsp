<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<section class="card login">
  <form name="myform"
    novalidate ng-submit="login()">

    <div class="textintro">
      <h1>Hi there!</h1>
      <p>Log-in to access the awesomeness!</p>
      <p class="message" ng-show="message">{{ message }}</p>
    </div>

    <fieldset>
      <input type="email" name="email" placeholder="Email" ng-model="user.email" ng-required="true" >
      <p class="error validationerror" 
      ng-show="myform.email.$touched && myform.email.$invalid">must be valid email</p>
      <input type="password" ng-model="user.password" name="password" placeholder="Password">
    </fieldset>

    <button type="submit" class="btn" ng-disabled="myform.$invalid" ng-click="loginCheck()">Login</button>
    <p>or <a href="#/register">register</a></p>
  </form>
</section>
