package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@RequestMapping("/reviewDetail")
	public String reviewDetail() {
		return "review/reviewDetail";
	}
	
	@RequestMapping("/reviewList")
	public String reviewList() {
		return "review/reviewList";
	}
	
	@RequestMapping("/reviewRegist")
	public String reviewRegist() {
		return "review/reviewRegist";
	}
	
}
