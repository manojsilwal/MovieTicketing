package edu.waaProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.waaProject.domain.User;


@Repository
public interface UserDao extends JpaRepository<User, Integer>{
		public User findByUsername(String username);
		
		public User findById(int id);
}
