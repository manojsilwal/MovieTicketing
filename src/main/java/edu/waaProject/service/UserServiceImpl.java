package edu.waaProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import edu.waaProject.domain.User;
import edu.waaProject.repository.UserDao;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@PreAuthorize("hasRole('ROLE_ADMIN')")

	@Override
	public User save(User user) {
		return userDao.save(user);
	}

	@Override
	public void delete(int userId) {
		userDao.delete(userId);
	}

	@Override
	public User findByUserName(String userName) {
		return userDao.findByUsername(userName);
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public User findByUserId(int userId) {
		return userDao.findById(userId);
	}

}
