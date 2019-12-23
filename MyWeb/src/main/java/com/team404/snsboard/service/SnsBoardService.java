package com.team404.snsboard.service;

import java.util.ArrayList;

import com.team404.command.SnsBoardVO;

public interface SnsBoardService {

	public String insert(SnsBoardVO vo);
	public ArrayList<SnsBoardVO> getList();
	public int delete(int bno); //내꺼
	public SnsBoardVO getDetail(int bno);

}

