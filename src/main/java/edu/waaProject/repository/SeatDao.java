package edu.waaProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.waaProject.domain.Seats;

public interface SeatDao extends JpaRepository<Seats, Integer> {

	List<Seats> findAll();
	Seats findBySeatId(int seatId);
	Seats findBySeatName(String seatName);
}
