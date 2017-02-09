<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="container">
	<div class="row">
	
			


		<div class="plane">
			<div class="cockpit">
				<h1>{{setTheater().movieName}}</h1>
			</div>
		<form id="seats" action="">
			
			<div class="exit exit--front fuselage"></div>
					<ol class="cabin fuselage">
				<li class="row--1">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="1A" id="1A" /> <label
							for="1A">1A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="1B" id="1B" /> <label
							for="1B">1B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="1C" id="1C" /> <label
							for="1C">1C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="1D" disabled id="1D" />
							<label for="1D">Occupied</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="1E" id="1E" /> <label
							for="1E">1E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="1F" id="1F" /> <label
							for="1F">1F</label></li>
					</ol>
				</li>
				<li class="row--2">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="2A" id="2A" /> <label
							for="2A">2A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="2B" id="2B" /> <label
							for="2B">2B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="2C" id="2C" /> <label
							for="2C">2C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="2D" id="2D" /> <label
							for="2D">2D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="2E" id="2E" /> <label
							for="2E">2E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="2F" id="2F" /> <label
							for="2F">2F</label></li>
					</ol>
				</li>
				<li class="row--3">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="3A" id="3A" /> <label
							for="3A">3A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="3B" id="3B" /> <label
							for="3B">3B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="3C" id="3C" /> <label
							for="3C">3C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="3D" id="3D" /> <label
							for="3D">3D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="3E" id="3E" /> <label
							for="3E">3E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="3F" id="3F" /> <label
							for="3F">3F</label></li>
					</ol>
				</li>
				<li class="row--4">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="4A" id="4A" /> <label
							for="4A">4A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="4B" id="4B" /> <label
							for="4B">4B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="4C" id="4C" /> <label
							for="4C">4C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="4D" id="4D" /> <label
							for="4D">4D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="4E" id="4E" /> <label
							for="4E">4E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="4F" id="4F" /> <label
							for="4F">4F</label></li>
					</ol>
				</li>
				<li class="row--5">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="5A" id="5A" /> <label
							for="5A">5A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="5B" id="5B" /> <label
							for="5B">5B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="5C" id="5C" /> <label
							for="5C">5C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="5D" id="5D" /> <label
							for="5D">5D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="5E" id="5E" /> <label
							for="5E">5E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="5F" id="5F" /> <label
							for="5F">5F</label></li>
					</ol>
				</li>
				<li class="row--6">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="6A" id="6A" /> <label
							for="6A">6A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="6B" id="6B" /> <label
							for="6B">6B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="6C" id="6C" /> <label
							for="6C">6C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="6D" id="6D" /> <label
							for="6D">6D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="6E" id="6E" /> <label
							for="6E">6E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="6F" id="6F" /> <label
							for="6F">6F</label></li>
					</ol>
				</li>
				<li class="row--7">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="7A" id="7A" /> <label
							for="7A">7A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="7B" id="7B" /> <label
							for="7B">7B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="7C" id="7C" /> <label
							for="7C">7C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="7D" id="7D" /> <label
							for="7D">7D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="7E" id="7E" /> <label
							for="7E">7E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="7F" id="7F" /> <label
							for="7F">7F</label></li>
					</ol>
				</li>
				<li class="row--8">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="8A" id="8A" /> <label
							for="8A">8A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="8B" id="8B" /> <label
							for="8B">8B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="8C" id="8C" /> <label
							for="8C">8C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="8D" id="8D" /> <label
							for="8D">8D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="8E" id="8E" /> <label
							for="8E">8E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="8F" id="8F" /> <label
							for="8F">8F</label></li>
					</ol>
				</li>
				<li class="row--9">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="9A" id="9A" /> <label
							for="9A">9A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="9B" id="9B" /> <label
							for="9B">9B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="9C" id="9C" /> <label
							for="9C">9C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="9D" id="9D" /> <label
							for="9D">9D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="9E" id="9E" /> <label
							for="9E">9E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="9F" id="9F" /> <label
							for="9F">9F</label></li>
					</ol>
				</li>
				<li class="row--10">
					<ol class="seats" type="A">
						<li class="seat"><input type="checkbox" name="seat" value="10A" id="10A" /> <label
							for="10A">10A</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="10B" id="10B" /> <label
							for="10B">10B</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="10C" id="10C" /> <label
							for="10C">10C</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="10D" id="10D" /> <label
							for="10D">10D</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="10E" id="10E" /> <label
							for="10E">10E</label></li>
						<li class="seat"><input type="checkbox" name="seat" value="10F" id="10F" /> <label
							for="10F">10F</label></li>
					</ol>
				</li>
			</ol>
			<div class="exit exit--back fuselage"></div>
			<a type="button" ng-click="seatCheck();" ng-href="#/checkOut">Book Ticket</a>
		</div>
		
	</form>
		




	</div>
</div>