package edu.waaProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.waaProject.domain.Movie;
import edu.waaProject.domain.Show;

public interface ShowDao extends JpaRepository<Show, Long> {

	List<Show> findAll();

	Show findByShowId(long showId);

	Show findByMovie(Movie movie);

}
