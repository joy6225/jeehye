package com.team404.freereply.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.team404.command.ReplyVO;
import com.team404.util.Criteria;
import com.team404.util.ReplyPageVO;

public interface FreeReplyMapper {

	public int regist(ReplyVO vo);//댓글 등록
	//public ArrayList<ReplyVO> getList(int bno);//목록 더보기X
	public ArrayList<ReplyVO> getList(@Param("cri") Criteria cri, @Param("bno") int bno);//목록 더보기O
	public int getTotal(int bno);//게시글에 따른 총 댓글 수
	public int delete(int rno);//댓글 삭제
	public ReplyVO checkPw(int rno);
	public int update(ReplyVO vo);//수정

}
