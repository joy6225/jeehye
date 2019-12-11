package com.team404.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.team404.command.ReplyVO;
import com.team404.freereply.service.FreeReplyService;
import com.team404.util.Criteria;
import com.team404.util.ReplyPageVO;

@RestController
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	@Qualifier("frService")
	private FreeReplyService frService;
	
	//jackson-databind라이브러리 추가(servlet-context.xml에)
	@RequestMapping("/new")
	public int regist(@RequestBody ReplyVO vo) {
		
		int result = frService.regist(vo);
		return result;
	}
	
	//댓글목록(url의 형태로 받기위해서 pathVariable)
//	@RequestMapping("/getReply/{bno}/{pageNum}")
//	public ArrayList<ReplyVO> getReply(
//			@PathVariable("bno")int bno,
//			@PathVariable("pageNum") int pageNum){
//		ArrayList<ReplyVO> list = frService.getList(bno);
//		System.out.println(list.toString());
//		//댓글 더보기
//		
//		return list;
//	}

	//댓글목록(url의 형태로 받기위해서 pathVariable)
	@RequestMapping("/getReply/{bno}/{pageNum}")
	public ReplyPageVO getReply(
			@PathVariable("bno")int bno,
			@PathVariable("pageNum") int pageNum){
		//댓글 더보기
		//1. Criteria클래스의 pageNum과, 들고 올 게시글 수 20개를 세팅
		//2. getList메서드는 (cri,게시글번호)를 매개변수로 받는다
		//+댓글 쿼리를 변경(@Param어노테이션 사용)
		//3. getTotal메서드로 게시글에 따른 댓글 수를 구해옴
		//4. ReplyPageVO에 list와 total을 담아서 반환
		//5. 화면에서는 더보기 조건처리
		Criteria cri = new Criteria(pageNum, 20);
		ReplyPageVO vo = frService.getList(cri,bno);
		System.out.println(vo.toString());
		return vo;
	}
	
	@RequestMapping("/delete")
	public int delete(@RequestBody ReplyVO vo){
		int result = checkPw(vo.getRno(), vo.getReplyPw());
		if(result == 1) {
			return frService.delete(vo.getRno());
		}else {
			return 0;
		}
	}
	
	public int checkPw(int rno, String replyPw) {
		return frService.checkPw(rno, replyPw); 
	}
	
	@RequestMapping("/update")
	public int update(@RequestBody ReplyVO vo) {
		int result = frService.checkPw(vo.getRno(), vo.getReplyPw());
		if(result == 1) {
			return frService.update(vo);
		}else {
			return 0;
		}
	}	
	
}
