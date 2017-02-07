package edu.waaProject.service;

import java.util.List;

import edu.waaProject.domain.Theater;

public interface TheaterService {
	Theater save(Theater theater);

	void delete(int theaterId);

	Theater findByTheaterName(String theaterName);

	List<Theater> findAll();

	Theater findByTheaterId(int theaterId);
}
