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
	/**
	 * this method is use to list the all user list.
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<User> getUsers() {

		try {

			System.out.println("Successfully listed user list with " + userService.findAll().size() + " rows");
			return userService.findAll();

		} catch (Exception e) {
			System.err.println("Error in lising users: " + e.getMessage());
			return null;

		}

	}
	
	/**
	 * this method is use to add user.
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public User addUser(@RequestBody User user) {
		String userId="";
		try {
			userId=String.valueOf(user.getId());
			System.out.println("Successfully added user  with id: " +userId);
			return userService.save(user);

		} 
		catch (Exception e) {
			System.err.println("Error in added user with id: " +userId);
			return null;
		}
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.GET,  headers = "Accept=application/json")
	public User getUser(@PathVariable("id") int id) {
		return userService.findByUserId(id);
	}
	
	
	/**
	 * this method is use to update user.
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user", method = RequestMethod.PUT)
	public User updateUser(@RequestBody User user) {
		String userId="";
		try {
			userId=String.valueOf(user.getId());
			System.out.println("Successfully updated user with id: " +userId);
			return userService.save(user);

		} catch (Exception e) {
			System.err.println("Error in updating user with id: " +userId);
			return null;

		}

	}
	
	/**
	 * this method is use to delete user.
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
	public void updateUser(@PathVariable int id) {
		try {
			System.out.println("Successfully deleted user with id: " +id);
			userService.delete(id);

		} catch (Exception e) {
			System.err.println("Error in updating user with id: " +id);
		}

	}
	

}
