package com.team404.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class FreeBoardInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//1.등록 클릭했을 때, 로그인 인터셉터로 연결
		//2.Regist 화면에서는 작성자 세션값을 처리, readonly
		//3.수정, 변경, 삭제 클릭 시 인터셉터를 실행시킴(단, 화면에서는 writer에 대한 정보를 반드시 넘겨줘야함)
		
		//화면에서 넘어오는 글쓸이, 세션에대한 정보
		String writer = request.getParameter("writer");
		String user_id = (String)request.getSession().getAttribute("user_id");
		
		if(writer != null && writer.equals(user_id)) {//작성자가 null이 아니고, 세션과 작성자가 같다면 컨트롤러를 실행
			return true;
		}else {
			//화면에 객체 실어서 보내기
			response.setContentType("text/html");//응답 내용에 대한 내용
			response.setCharacterEncoding("utf-8");//응답 내용에 대한 한글처리
			response.getWriter().write("<script>");
			response.getWriter().write("alert('권한이 없습니다');");
			response.getWriter().write("history.go(-1);");
			response.getWriter().write("</script>");
			return false;//컨트롤러를 실행하지 않음
		}
		
	}

	
	
}
