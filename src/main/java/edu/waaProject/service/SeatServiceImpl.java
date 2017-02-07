package edu.waaProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.waaProject.domain.Seats;
import edu.waaProject.repository.SeatDao;

@Service
public class SeatServiceImpl implements SeatService {

	@Autowired
	private SeatDao seatDao;
	
	@Override
	public Seats save(Seats seats) {
		
		return seatDao.save(seats);
	}

	@Override
	public void delete(int seatId) {
		 seatDao.delete(seatId);

	}

	@Override
	public Seats findBySeatName(String seatName) {
		
		return seatDao.findBySeatName(seatName);
	}

	@Override
	public List<Seats> findAll() {
		
		return seatDao.findAll();
	}

	@Override
	public Seats findBySeatId(int seatId) {
		return seatDao.findBySeatId(seatId);
	}

}
