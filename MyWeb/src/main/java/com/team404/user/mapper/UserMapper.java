package com.team404.user.mapper;

import com.team404.command.UserVO;

public interface UserMapper {
	
	public int idConfirm(String userId);
	public int join(UserVO vo); 
	public int login(UserVO vo);
	public UserVO getInfo(String userId);//마이페이지
	public int updateForm(UserVO vo);//수정

}
