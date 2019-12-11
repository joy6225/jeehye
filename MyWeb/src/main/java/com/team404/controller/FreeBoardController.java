package com.team404.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team404.command.FreeBoardVO;
import com.team404.freeboard.service.FreeBoardService;
import com.team404.util.Criteria;
import com.team404.util.PageVO;

@Controller
@RequestMapping("/freeBoard")
public class FreeBoardController {
	
	@Autowired
	@Qualifier("fbService")
	private FreeBoardService fbService;
	
	//등록화면
	@RequestMapping(value="/freeRegist", method=RequestMethod.GET)
	public void freeRegist() {
		System.out.println("freeRegist실행");
	}
	
	//목록화면
	@RequestMapping(value="/freeList", method=RequestMethod.GET)
	public void freeList(Model model, Criteria cri) {
		System.out.println("freeList실행");
		//일반 (페이징X)
		//ArrayList<FreeBoardVO> list = fbService.getList();
		
		//--------------------- 페이징 (검색X)------------------------
		//ArrayList<FreeBoardVO> list = fbService.getList(cri);
		//int total = fbService.getTotal();
		//System.out.println("total : " + total);
		//PageVO pageVO = new PageVO(cri, total);
		//System.out.println(pageVO.toString());
		//----------------------------------------------------
		
		//-------------------- 검색페이징 -----------------------
		ArrayList<FreeBoardVO> list = fbService.getList(cri);
		int total = fbService.getTotal(cri);
		System.out.println("total : " + total);
		PageVO pageVO = new PageVO(cri, total);
		model.addAttribute("pageVO", pageVO);
		model.addAttribute("boardList", list);
		System.out.println("넘어오는 값 : " + cri.toString());
	}
	
	//게시글 등록폼 처리
	@RequestMapping("/registForm")
	public String registForm(FreeBoardVO vo, RedirectAttributes RA) {
		System.out.println(vo.toString());
		//서비스의 regist메서드를 생성하고, mapper 에 regist메서드를 생성한 후에
		//마이바티스 xml에서 db에 insert처리
		fbService.registForm(vo);
		//리다이렉트시에 1회성 소멸데이터로 한번만 사용하고 싶을 때
		RA.addFlashAttribute("msg", "등록 완료되었습니다");
		//리다이렉트는 다시 컨트롤러를 태워 보냄
		return "redirect:/freeBoard/freeList";
	}

//	//상세화면
//	@RequestMapping(value="/freeDetail", method=RequestMethod.GET)
//	public void freeDetail(@RequestParam("bno") int bno, Model model) {
//		System.out.println("freeDetail실행");
//		//서비스의 content호출, mapper content호출
//		//모델에 담아서 boardVO 이름으로 화면에 전달
//		FreeBoardVO vo = fbService.content(bno);
//		model.addAttribute("vo", vo);
//	}
//	
//	//수정화면
//	@RequestMapping(value="/freeModify", method=RequestMethod.POST)
//	public void freeModify(@RequestParam("bno") int bno, Model model) {
//		System.out.println("freeModify실행");
//		FreeBoardVO vo = fbService.content(bno);
//		model.addAttribute("vo",vo);
//	}
	
	//상세보기, 수정화면(동일한 기능이기 때문에 {}로 묶어서 사용)
	@RequestMapping(value= {"/freeDetail", "/freeModify"})
	public void view(@RequestParam("bno") int bno, Model model) {

		FreeBoardVO vo = fbService.content(bno);
		model.addAttribute("vo",vo);
	}
	
	//게시글 수정
	@RequestMapping(value="/freeUpdate")
	public String freeUpdate(FreeBoardVO vo, RedirectAttributes RA) {
		//서비스의 update메서드 실행, mapper의 update메서드 실행
		//컨트롤러에는 결과를 받환받아서 수정 성공시 RA에 msg이름으로 "게시물 수정이 정상 처리되었습니다"
		//실패 시 RA msg로 "게시물 수정에 실패했습니다"
		//list화면으로 이동
		Boolean result = fbService.freeUpdate(vo);
		System.out.println("업데이트 결과" + result);
		if(result == true) {
			RA.addFlashAttribute("msg", "게시물 수정이 정상 처리되었습니다");
		}else if(result == false) {
			RA.addFlashAttribute("msg", "게시물 수정에 실패했습니다");
		}
		return "redirect:/freeBoard/freeList";
	}
	
	//게시글 삭제
	@RequestMapping(value="/freeDelete")
	public String freeDelete(FreeBoardVO vo, RedirectAttributes RA) {
		boolean result = fbService.freeDelete(vo);
		
		System.out.println("삭제 결과 : " + result);
		
		if(result) {
			RA.addFlashAttribute("msg", "게시물 삭제 완료했습니다");
		}else{
			RA.addFlashAttribute("msg", "게시물 삭제 실패했습니다");
		}
		return "redirect:/freeBoard/freeList";
	}
	
	
	
}
