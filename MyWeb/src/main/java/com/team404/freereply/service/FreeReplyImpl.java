package com.team404.freereply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team404.command.ReplyVO;
import com.team404.freereply.mapper.FreeReplyMapper;
import com.team404.util.Criteria;
import com.team404.util.ReplyPageVO;

@Service("frService")
public class FreeReplyImpl implements FreeReplyService {

	@Autowired
	private FreeReplyMapper frMapper;
	
	@Override
	public int regist(ReplyVO vo) {
		
		return frMapper.regist(vo);
	}

//	@Override
//	public ArrayList<ReplyVO> getList(Criteria cri, int bno) {
//		
//		return frMapper.getList(cri, bno);
//	}
	@Override //더보기 목록
	public ReplyPageVO getList(Criteria cri, int bno) {
		//1. 페이징된 List를 구해옴
		//2. 전체 게시글 수를 구함
		//각각 다른 두개의 데이터를 마이바티스로 전송할 때 @param("")어노테이션 사용 마치 map
		//3. list와 total을 vo에 저장 
		ArrayList<ReplyVO> list = frMapper.getList(cri, bno);
		int replyCount = frMapper.getTotal(bno);
		ReplyPageVO vo = new ReplyPageVO(list, replyCount);
		return vo;
	}

	@Override
	public int delete(int rno) {
		
		return frMapper.delete(rno);
	}

	@Override
	public int checkPw(int rno, String replyPw) {
		ReplyVO vo = frMapper.checkPw(rno);
		if(replyPw.equals(vo.getReplyPw())) {
			return 1;
		}else {
			return 0;
		}
	}

	@Override
	public int update(ReplyVO vo) {
		
		return frMapper.update(vo);
	}

}
