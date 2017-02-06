package edu.waaProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.waaProject.domain.Movie;
import edu.waaProject.repository.MovieDao;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired 
	private MovieDao movieDao;
	
	@Override
	public void save(Movie movie) {
		movieDao.save(movie);

	}

	@Override
	public void delete(Long movieId) {
		movieDao.delete(movieId);

	}

	@Override
	public Movie findByMovieName(String movieName) {
		
		return movieDao.findByMovieName(movieName);
	}

	@Override
	public List<Movie> findAll() {
		// TODO Auto-generated method stub
		return movieDao.findAll();
	}

}
