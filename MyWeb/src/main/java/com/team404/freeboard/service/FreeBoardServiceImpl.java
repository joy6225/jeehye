package com.team404.freeboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team404.command.FreeBoardVO;
import com.team404.freeboard.mapper.FreeBoardMapper;
import com.team404.util.Criteria;

@Service("fbService")
public class FreeBoardServiceImpl implements FreeBoardService{

	@Autowired
	private FreeBoardMapper fbMapper;
	
	@Override
	public void registForm(FreeBoardVO vo) {
		int result = fbMapper.registForm(vo);
		System.out.println("등록 결과 : " + result);
	}
	
	//일반 목록(페이징X)
//	@Override
//	public ArrayList<FreeBoardVO> getList() {
//		
//		return fbMapper.getList();
//	}
	
	//total 검색X
//	@Override
//	public int getTotal() {
//		return fbMapper.getTotal();
//	}
	
	//페이징 된 목록(검색O)
	@Override
	public ArrayList<FreeBoardVO> getList(Criteria cri) {
		return fbMapper.getList(cri);
	}
	
	@Override //검색O
	public int getTotal(Criteria cri) {
		return fbMapper.getTotal(cri);
	}
	

	@Override
	public FreeBoardVO content(int bno) {
		
		return fbMapper.content(bno);
	}

	@Override
	public boolean freeUpdate(FreeBoardVO vo) {
		
		
		return fbMapper.freeUpdate(vo);
		
	}

	@Override
	public boolean freeDelete(FreeBoardVO vo) {
		return fbMapper.freeDelete(vo);
	}




	
}
