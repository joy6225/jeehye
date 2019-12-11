package com.team404.util;

import java.util.ArrayList;

import com.team404.command.ReplyVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor//기본생성자
@AllArgsConstructor//모든 변수를 초기화하는 생성자
public class ReplyPageVO {
	
	//replyVO와 갯수를 받는 vo를 따로 생성
	private ArrayList<ReplyVO> list;
	private int replyCount;
	//{replyCount:100, {vo1},{vo2}'''}이런 형태의 vo값

	
}
