package edu.waaProject.service;

import java.util.List;

import edu.waaProject.domain.Seats;

public interface SeatService {
	Seats save(Seats seats);

	void delete(int seatId);

	Seats findBySeatName(String seatName);

	List<Seats> findAll();

	Seats findBySeatId(int seatId);
}
