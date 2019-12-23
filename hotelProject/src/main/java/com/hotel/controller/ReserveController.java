package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reserve")
public class ReserveController {

	@RequestMapping("/reservePay")
	public String reservePay() {
		return "reserve/reservePay";
	}
	
	@RequestMapping("/reserveRoom")
	public String reserveRoom() {
		return "reserve/reserveRoom";
	}
}
