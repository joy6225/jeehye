package com.team404.command;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReplyVO {

	private int rno;
	private int bno;
	private String reply;//내용
	private String replyId;
	private String replyPw;
	private Timestamp replydate;
	private Timestamp updatedate;
	
}
