package edu.waaProject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.waaProject.domain.User;

@Repository
public interface UserDao extends JpaRepository<User, Integer> {
	User findByUsername(String userName);

	User findById(int userId);

	List<User> findAll();
}
