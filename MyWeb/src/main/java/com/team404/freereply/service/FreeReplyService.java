package com.team404.freereply.service;

import java.util.ArrayList;

import com.team404.command.ReplyVO;
import com.team404.util.Criteria;
import com.team404.util.ReplyPageVO;

public interface FreeReplyService {
	
	public int regist(ReplyVO vo);//댓글 등록
	//public ArrayList<ReplyVO> getList(int bno);//댓글 목록(더보기X)
	public ReplyPageVO getList(Criteria cri, int bno);//더보기 목록처리
	public int delete(int rno);//댓글 삭제
	public int checkPw(int rno, String replyPw);
	public int update(ReplyVO vo);//수정
	
}
