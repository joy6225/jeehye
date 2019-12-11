package com.team404.controller;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team404.command.UserVO;
import com.team404.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	//@restController는 @일반컨트롤러+@responseBody
	//@responseBody는 일반컨트롤러의 메서드에서 사용가능 
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	//회원가입화면
	@RequestMapping(value="/userJoin")
	public String userJoin() {
		return "user/userJoin";
	}

	//일반 컨트롤러에서 @responseBocy어노테이션을 적어주면 
	//메서드의 리턴값을 뷰리졸버로 가지않고 해당 메서드를 호출한 곳으로 반환
	@RequestMapping(value="/idConfirm")
	@ResponseBody
	public int idConfirm(@RequestBody UserVO vo) {
		//@requestBody는 받아온 json형식을 자동으로 useVO로 맵핑
		int result = userService.idConfirm(vo.getUserId());
		return result;
	}

	//회원가입처리
	@RequestMapping(value="/joinForm")
	public String joinForm(UserVO vo, RedirectAttributes RA) {
		//join메서드로 insert작업
		//성공시 login페이지로 
		//실패시 login페이지로
		System.out.println(vo.toString());
		int result = userService.join(vo);
		if(result == 1) {
			RA.addFlashAttribute("msg","회원가입을 축하드립니다");
		}else {
			RA.addFlashAttribute("msg","회원가입에 실패하였습니다");
		}
		return "redirect:/user/userLogin";
	}
	
	//로그인화면
	@RequestMapping(value="/userLogin")
	public String userLogin() {
		
		return "user/userLogin";
	}
	
	@RequestMapping(value="/loginForm")
	public String loginForm(UserVO vo, RedirectAttributes RA, HttpSession session) {
		
		int result = userService.login(vo);
		//기존에 사용하던 방식
//		if(result == 1) {
//			session.setAttribute("user_id", vo.getUserId());//세션에 아이디 저장
//			RA.addFlashAttribute("msg","로그인 성공!");
//			return "redirect:/";
//		}else {
//			RA.addFlashAttribute("msg","아이디, 비밀번호를 확인하세요");
//			return "redirect:/user/userLogin";
//		}
		
		//Post핸들러와 접목시켜서 사숑, 단 중복 리다이렉트 이동이 일어나면 안됩니다
		
		if(result == 1) {//로그인 성공
			session.setAttribute("user_id", vo.getUserId());//세션에 아이디 저장
			return "home";
		}else {
			RA.addFlashAttribute("msg","아이디, 비밀번호를 확인하세요");
			return "redirect:/user/userLogin";
		}
		
	}
	
	//마이페이지화면
	//페이지 진입 시, 조인을 통해서, user에 대한 정보와, user가 쓴 글에 대한 정보를 동시에 처리
	@RequestMapping(value="/userMypage")
	public String userMypage(HttpSession session, Model model) {
		
		String userId = (String)session.getAttribute("user_id");
		UserVO userVO = userService.getInfo(userId);//join의 결과를 resultMap으로 한번에 묶어서 처리
		model.addAttribute("userVO",userVO);
		return "user/userMypage";
	}
	
	
	@RequestMapping(value="/userLogout")
	public String userLogout(HttpSession session, RedirectAttributes RA) {
		RA.addFlashAttribute("msg", (session.getAttribute("user_id") + "님 로그아웃 처리 되었습니다"));
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/updateForm")
	@ResponseBody
	public String updateForm(@RequestBody UserVO vo) {
		int result = userService.updateForm(vo);
		return result==1 ? "success":"fail";
	}
}
