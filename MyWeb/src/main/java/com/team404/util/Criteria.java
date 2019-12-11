package com.team404.util;

import lombok.Data;

@Data //겟터셋터 자동생성
public class Criteria {	//DB로 전송
	
	private int pageNum;//현재 조회하는 페이지번호
	private int amount;//한 페이지에서 몇 개의 데이터를 보여 줄 것인가
	private String searchName;
	private String searchType;
	
	
	public Criteria() {//첫 페이지 진입 시 생성 될 클래스
						//기본으로 1, 10 제공
		this(1,10);
	}
	
	public Criteria(int pageNum, int amount) {//페이지 번호를 클릭 시 실행 될 생성자
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
}
