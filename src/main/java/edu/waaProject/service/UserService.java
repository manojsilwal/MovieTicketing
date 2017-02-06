package edu.waaProject.service;

import java.util.List;

import edu.waaProject.domain.User;


public interface UserService {
	public User findById(int id);
	public List<User> findAll();
	public void save(User user);
	public void delete(int id);
	public void update(User user);
	//added
}
