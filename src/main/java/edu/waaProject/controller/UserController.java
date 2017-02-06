package edu.waaProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.User;
import edu.waaProject.service.UserService;

@RestController
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public ResponseEntity<List<User>> getUsers() {
		List<User> users = userService.findAll();
		return new ResponseEntity<List<User>>(users, HttpStatus.OK);
	}

	@RequestMapping(value = "/users", method = RequestMethod.POST)
	public String addUser(@RequestBody User user) {
		userService.save(user);
		return null;
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
	public User getUser(@PathVariable("id") int id) {
		return userService.findById(id);
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
	public String deleteUser(@PathVariable("id") int id) {
		userService.delete(id);
		return "users";
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.PUT)
	public String updateUser(@PathVariable("id") int id, @RequestBody User user) {
		user.setId(id);
		userService.save(user);
		return "users";
	}
}
