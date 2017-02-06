package edu.waaProject.service;


import java.util.List;

import edu.waaProject.domain.Movie;

public interface MovieService {
	Movie save(Movie movie);

	void delete(Long movieId);

	Movie findByMovieName(String movieName);
	
	List<Movie> findAll();
	
	Movie findByMovieId(long movieId);
}
