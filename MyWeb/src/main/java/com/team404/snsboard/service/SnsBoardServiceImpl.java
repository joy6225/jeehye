package com.team404.snsboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team404.command.SnsBoardVO;
import com.team404.snsboard.mapper.SnsBoardMapper;

@Service("snsService")
public class SnsBoardServiceImpl implements SnsBoardService{

	@Autowired
	private SnsBoardMapper snsMapper;
	
	@Override
	public String insert(SnsBoardVO vo) {
		String result = "";
		int result2 = snsMapper.insert(vo);
		if(result2 == 1) {
			result = "success";
		}else {
			result = "fail";
		}
		return result;
	}

	@Override
	public ArrayList<SnsBoardVO> getList() {
		ArrayList<SnsBoardVO> vo = snsMapper.getList();
		System.out.println(vo.toString());
		return vo;
	}

	//내꺼
	 @Override
	 public int delete(int bno) {
		 return snsMapper.delete(bno); 
		 }
	 

	@Override
	public SnsBoardVO getDetail(int bno) {
		return snsMapper.getDetail(bno);
	}

}
