package edu.waaProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.waaProject.domain.Movie;
import edu.waaProject.domain.Show;
import edu.waaProject.repository.ShowDao;

@Service
public class ShowServiceImpl implements ShowService {

	@Autowired
	private ShowDao showDao;

	@Override
	public Show save(Show show) {
		// TODO Auto-generated method stub
		return showDao.save(show);
	}

	@Override
	public void delete(Long showId) {
		showDao.delete(showId);
	}

	

	@Override
	public List<Show> findAll() {
		// TODO Auto-generated method stub
		return showDao.findAll();
	}

	@Override
	public Show findByMovie(Movie movie) {
		// TODO Auto-generated method stub
		return showDao.findByMovie(movie);
	}

	@Override
	public Show findByShowId(Long showId) {
		return showDao.findByShowId(showId);
	}

}
