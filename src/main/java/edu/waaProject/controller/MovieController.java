package edu.waaProject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.Movie;
import edu.waaProject.service.MovieService;

@RestController
public class MovieController {

	@Autowired
	private MovieService movieService;

	@RequestMapping(value = "/movies", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Movie> getMovies() {

		return movieService.findAll();
	}

	@RequestMapping(value = "/movies/{movieId}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Movie getMovie(@PathVariable("movieId") long movieId) {

		return movieService.findByMovieId(movieId);
	}
	
	

	@RequestMapping(value = "/movies", method = RequestMethod.POST, headers = "Accept=application/json")
	public Movie addMovie(@RequestBody Movie movie) {
		String movieId = "";
		try {
			movieId = String.valueOf(movie.getMovieId());
			System.out.println("Data added successfully with id :" + movieId);
			return movieService.save(movie);

		} catch (Exception ex) {
			System.out.println("Error in adding movie." + ex.toString());

		}
		return null;

	}

	@RequestMapping(value = "/movies", method = RequestMethod.PUT, headers = "Accept=application/json")
	public Movie updateMovie(@RequestBody Movie movie) {
		String movieId = "";
		try {
			movieId = String.valueOf(movie.getMovieId());
			System.out.println("Data updated successfully with id :" + movieId);
			return movieService.save(movie);

		} catch (Exception ex) {
			System.out.println("Error in updating movie." + ex.toString());

		}
		return null;

	}

	@RequestMapping(value = "/movies/{movieId}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteMovie(@PathVariable Long movieId) {
		try {

			System.out.println("Data deleted successfully with id :" + movieId);
			movieService.delete(movieId);

		} catch (Exception ex) {
			System.out.println("Error in deleting movie." + ex.toString());

		}

	}

}
