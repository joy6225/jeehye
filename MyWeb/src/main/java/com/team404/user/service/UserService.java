package com.team404.user.service;

import com.team404.command.UserVO;

public interface UserService {
	
	public int idConfirm(String userId);//중복체크
	public int join(UserVO vo); //회원가입
	public int login(UserVO vo);//로그인
	public UserVO getInfo(String userId);//마이페이지
	public int updateForm(UserVO vo);//수정
}
