package com.team404.snsboard.mapper;

import java.util.ArrayList;

import com.team404.command.SnsBoardVO;

public interface SnsBoardMapper {

	public int insert(SnsBoardVO vo);
	public ArrayList<SnsBoardVO> getList();
	public int delete(int bno); //내꺼
	public SnsBoardVO getDetail(int bno);



}
