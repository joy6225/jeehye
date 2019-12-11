package com.team404.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team404.command.UserVO;
import com.team404.user.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;

	@Override
	public int idConfirm(String userId) {
		
		return userMapper.idConfirm(userId);
	}

	@Override
	public int join(UserVO vo) {
		
		return userMapper.join(vo);
	}

	@Override
	public int login(UserVO vo) {
		
		return userMapper.login(vo);
	}

	@Override
	public UserVO getInfo(String userId) {
		
		return userMapper.getInfo(userId);
	}

	@Override
	public int updateForm(UserVO vo) {
		
		return userMapper.updateForm(vo);
	}
	
	
}
