package edu.waaProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.waaProject.domain.Movie;

public interface MovieDao extends JpaRepository<Movie, Long> {
	Movie findByMovieName(String movieName);
	Movie findByMovieId(long movieId);
	List<Movie> findAll();
}
