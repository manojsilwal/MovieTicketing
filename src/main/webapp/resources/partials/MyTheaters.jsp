<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="container">
	<div class="row" ng-repeat="theater in theaters">
		<div class="col-md-3">
			<h2 style="padding-top: 30px; padding-left: 118px;">{{theater.tname}}</h2>
		</div>
		<div class="col-md-1">
			<div class="responsive-circle nyc-circle">
				<a href="#/booknow" ng-click="setTheater(theater);">
					<div class="circle-inner" ng-repeat="show in shows">
						<p id="mytime">{{show.startTime}}</p>
					</div>
				</a>
			</div>
		</div>


	</div>
</div>