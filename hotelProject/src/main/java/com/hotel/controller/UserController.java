package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UserController {

	@RequestMapping("/userJoin")
	public String userJoin() {
		return "users/userJoin";
	}
	
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "users/userLogin";
	}
	
	@RequestMapping("/userMypage")
	public String userMypage() {
		return "users/userMypage";
	}
}
