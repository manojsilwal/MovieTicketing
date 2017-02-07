package edu.waaProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.waaProject.domain.Theater;

public interface TheaterDao extends JpaRepository<Theater, Integer>{
	Theater findByTname(String theaterName);
	Theater findByTheaterId(int theaterId);
	List<Theater> findAll();
}
