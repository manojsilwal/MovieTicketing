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
      <input type="email"  placeholder="Email" data-ng-model="email" ng-required="true" >
      <input type="password" data-ng-model="password" placeholder="Password">
    </fieldset>

    <button type="submit" class="btn" ng-click="loginCheck()">Login</button>
    <p>or <a href="#/register">register</a></p>
  </form>
</section>
