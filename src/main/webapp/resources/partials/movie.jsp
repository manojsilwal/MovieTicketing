<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<section class="detail">
	<div ng-model="movies">
		<ul>
			<li>{{movies[whichMovie].movieName}}</li>
			<li>{{movies[whichMovie].director}}</li>
		</ul>
	</div>
</section>