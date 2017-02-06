package edu.waaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.Movie;
import edu.waaProject.service.MovieService;

@RestController
public class MovieController {

	@Autowired
	private MovieService movieService;
	
	@RequestMapping(value="/movies",method=RequestMethod.GET)
	public List<Movie> getMovies(){
		return movieService.findAll();
	}

}
