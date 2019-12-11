package com.team404.freeboard.mapper;

import java.util.ArrayList;

import com.team404.command.FreeBoardVO;
import com.team404.util.Criteria;

public interface FreeBoardMapper {
		
	public int registForm(FreeBoardVO vo);
	//public ArrayList<FreeBoardVO> getList();//일반 목록
	public ArrayList<FreeBoardVO> getList(Criteria cri);//페이징 된 목록
	public FreeBoardVO content(int bno);
	public boolean freeUpdate(FreeBoardVO vo);
	public boolean freeDelete(FreeBoardVO vo);
	public int getTotal(Criteria cri);
}
