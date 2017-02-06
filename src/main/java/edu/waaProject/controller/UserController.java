package edu.waaProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.waaProject.domain.User;
import edu.waaProject.service.UserService;


@RestController
public class UserController {
	@Autowired
	UserService userService;

		
	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public String saveUser(User user, Model model){
		userService.save(user);
		return "redirect:/users";
	}
	
	@RequestMapping(value="/users", method=RequestMethod.GET)
	public String addUser(User user, Model model){
		model.addAttribute("users",userService.findAll());
		return "users";
	}
	@RequestMapping(value="/addUser", method=RequestMethod.GET)
	public String addUserPage(User user, Model model){
		return "addUser";
	}
}
