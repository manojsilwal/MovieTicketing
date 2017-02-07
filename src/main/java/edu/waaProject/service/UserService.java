package edu.waaProject.service;

import java.util.List;

import edu.waaProject.domain.User;

public interface UserService {
	User save(User user);

	void delete(int userId);

	User findByUserName(String userName);

	List<User> findAll();

	User findByUserId(int userId);
}
