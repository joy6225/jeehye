package com.team404.util;

import lombok.Data;

@Data
public class PageVO {
	
	private int endPage;//화면에 그려질 끝번호
	private int startPage;//화면에 그려질 처음번호
	private boolean prev;//화면에 그려질 이전버튼
	private boolean next;//화면에 그려질 다음버튼
	
	private int pageNum;//현재 조회중인 페이지
	private int amount;//한 페이지에 보여줄 데이터 개수
	private int total;//전체 게시글 수
	
	private Criteria cri;//페이징 기준클래스
	
	public PageVO(Criteria cri, int total) {
		this.cri = cri;
		this.pageNum = cri.getPageNum();
		this.amount = cri.getAmount();
		this.total = total;
		//전달되는 기준에 따라서 pageVO계산처리
		//끝페이지 계산
		//글 개수가 122개 페이지네이션 10
		//현재 조회하는 페이지 12번 -> 화면에 보여질 끝페이지 20page, realEnd:13page
		//현재 조회하는 페이지가 25번 -> 화면에 보여질 끝페이지 30
		//끝페이지 공식 : (int)Math.ceil(조회하는 페이지 / 페이지네이션 개수)*10
		this.endPage = (int)Math.ceil(this.pageNum/10.0)*10;
		this.startPage = endPage - 10 + 1;
		int realEnd = (int)Math.ceil(total/(double)this.amount);
		//ex : 152개의 게시물
		//1번 페이지 클릭 시 -> endPage=10, realEnd=16
		//11~16번 페이지 클릭 시 -> endPage=20, realEnd=16
		//endPage > realEnd -> endPage = 16 이 됌
		if(this.endPage > realEnd) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = realEnd > this.endPage;
	}
	
}
