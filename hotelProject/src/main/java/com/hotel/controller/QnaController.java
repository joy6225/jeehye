package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")
public class QnaController {

	@RequestMapping("/qnaRegist")
	public String qnaDetail() {
		return "qna/qnaRegist";
	}
	@RequestMapping("/qnaList")
	public String qnaList() {
		return "qna/qnaList";
	}
}
