package edu.waaProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.waaProject.domain.Theater;
import edu.waaProject.repository.TheaterDao;

@Service
public class TheaterServiceImpl implements TheaterService {

	@Autowired
	private TheaterDao theaterDao;
	
	@Override
	public Theater save(Theater theater) {
		//theater.getSeats().set
		return theaterDao.save(theater);
	}

	@Override
	public void delete(int theaterId) {
		theaterDao.delete(theaterId);

	}

	@Override
	public Theater findByTheaterName(String theaterName) {
		
		return theaterDao.findByTname(theaterName);
	}

	@Override
	public List<Theater> findAll() {
		
		return theaterDao.findAll();
	}

	@Override
	public Theater findByTheaterId(int theaterId) {
		return theaterDao.findByTheaterId(theaterId);
	}

}
