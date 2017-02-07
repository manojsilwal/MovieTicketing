package edu.waaProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
		
	@RequestMapping("/admin")
	public String admin(){
		return "admin";
	}
	@RequestMapping("/")
	public String home(){
		return "index";
	}

}
