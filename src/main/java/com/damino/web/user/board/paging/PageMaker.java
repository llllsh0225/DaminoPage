package com.damino.web.user.board.paging;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;
	private int startPage; //시작 페이지
	private int endPage; //끝나는 페이지
	private boolean prev; //이전
	private boolean next; //다음
	private int displayPageNum = 10; //페이지당 보여주는 게시글 수
	private Paging pa;
	private String writerId;
	private String gubun; // 게시판 카테고리
	
	
	
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	public Paging getPa() {
		return pa;
	}
	public void setPa(Paging pa) {
		this.pa = pa;
	}
	
	private void calcData() {
		endPage = (int) (Math.ceil(pa.getPageNo() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
	  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)pa.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * pa.getPerPageNum() >= totalCount ? false : true;
	}
	
	public String makeQuery(int pageNo) {
		UriComponents uriComponents = null;
		if(gubun != null) {
			uriComponents =
					UriComponentsBuilder.newInstance()
										.queryParam("gubun", gubun)
									    .queryParam("pageNo", pageNo)
										.queryParam("perPageNum", pa.getPerPageNum())
										.build();
		}else {
			uriComponents =
					UriComponentsBuilder.newInstance()
									    .queryParam("pageNo", pageNo)
										.queryParam("perPageNum", pa.getPerPageNum())
										.build();
		}
		   
		return uriComponents.toUriString();
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
}
