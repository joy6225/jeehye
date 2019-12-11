package com.team404.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginFormInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
			//로그인 성공시 생성되는 세션 user_id
			String user_id = (String)request.getSession().getAttribute("user_id");
			String uri = (String)request.getSession().getAttribute("uri");
			if(uri != null && user_id != null) {//로그인성공, 기존에 접근하려는 유알아이가 있는 경우->uri로 이동
				response.sendRedirect(uri);
			}else if(user_id != null) {//일반적인 로그인 성공인 경우
				response.sendRedirect(request.getContextPath());
			}
			//3.
			//로그인 실패인 경우, 기존의 컨트롤러대로 실행됨
			System.out.println("실행 됨");
	}

	
	
}
