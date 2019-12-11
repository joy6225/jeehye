package com.team404.controllerTest;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.team404.command.FreeBoardVO;
import com.team404.command.TestVO;

@RestController
@RequestMapping("/restControl")
public class RestBasicController {
	
	//1. RestController는 기본적으로 return에 실린 값이 뷰리졸버로 전달되는 것이 아닌
	//	  요청된 주소로 반환됩니다.
		
	//나는 문자열로 반환보낼게~
	@RequestMapping(value= "/getText", produces = "text/plain; charset=utf-8")
	public String getText() {
		return "안녕하세요";
	}
	
	//나는 객체로 반환보낼게
	@RequestMapping(value="/getObject")
	public TestVO getObject() {
		TestVO vo = new TestVO(20, "홍길순", "kkk123");
		
		return vo; 
	}
	//나 num을 받고, 컬렉션 보낼게
	@RequestMapping(value="/getCollection")
	public ArrayList<TestVO> getCollection(@RequestParam("num") int num){
	
		ArrayList<TestVO> list = new ArrayList<>();
		
		for(int i = 0; i <= num; i++) {
			TestVO vo = new TestVO(i, "길자"+i, "kkk"+i);
			list.add(vo);
		}
		return list;
	}
	
	@RequestMapping("/getPath/{id}/{pw}")
	public HashMap<String, TestVO> getPath(
			@PathVariable("id") String id,
			@PathVariable("pw") String pw
			){
		System.out.println(id);
		System.out.println(pw);
		HashMap<String, TestVO> map = new HashMap<>();
		map.put("info", new TestVO(10, "홍길순", "hhh"));
		
		return map;
	}
	
	//@RequestBody json객체를 자바 vo에 자동 맵핑
	//구글확장프로그램 restclient
	//http://localhost:8181/jdbc/restControl/getJson으로 제이슨 형식으로 넘김
	@RequestMapping("/getJson")
	public ArrayList<TestVO> getJson(@RequestBody TestVO vo, HttpServletRequest request){
		ArrayList<TestVO> list = new ArrayList<>();
		list.add(new TestVO(20, "신사임당", "kkkk123"));
		//System.out.println("요청주소 : "+request.getRemoteAddr());
		return list;
	}
	
	//REST API에서 getMember /값1/값2 의 url로 호출하여
	//두 값이 동일하다면 TestVO에 (40, 값1, 홍길동)을 담아 반환하고, 그렇지않으면 null을 반환하는 메서드로 생성
	//rest client호출해서 결과확인
	
	@RequestMapping("/getMember/{v1}/{v2}")
	public TestVO getMember(			
			@PathVariable("v1") String v1,
			@PathVariable("v2") String v2){
		
		TestVO vo = new TestVO();
		System.out.println(v1);
		System.out.println(v2);
		if(v1.equals(v2)) {
			vo = new TestVO(40, v1, "홍길동");
		} else {
			 vo = null;
		}
		return vo;
	}
    @RequestMapping("/getMember")
    public TestVO getMember2 (@RequestBody TestVO vo) {
       if(vo.getId().equals(vo.getName())) {
          return new TestVO(40,vo.getId(),"홍길동");
       }else {
          return null;
       }
    }



}
