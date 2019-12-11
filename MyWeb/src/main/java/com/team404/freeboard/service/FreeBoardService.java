package com.team404.freeboard.service;

import java.util.ArrayList;

import com.team404.command.FreeBoardVO;
import com.team404.util.Criteria;

public interface FreeBoardService {
	
	public void registForm(FreeBoardVO vo);//등록
	//public ArrayList<FreeBoardVO> getList();//일반목록
	public ArrayList<FreeBoardVO> getList(Criteria cri);//페이징목록
	public FreeBoardVO content(int bno);//상세보기
	public boolean freeUpdate(FreeBoardVO vo);
	public boolean freeDelete(FreeBoardVO vo);
	public int getTotal(Criteria cri);
}
