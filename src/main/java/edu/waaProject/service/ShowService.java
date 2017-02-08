package edu.waaProject.service;

import java.util.List;

import edu.waaProject.domain.Movie;
import edu.waaProject.domain.Show;

public interface ShowService {
	Show save(Show show);

	void delete(Long showId);

	Show findByMovie(Movie movie);

	List<Show> findAll();

	Show findByShowId(Long showId);
}
