package com.damino.web.user.board.paging;

public class Paging {
	private int pageNo; //처음 시작시 보이는 페이지 번호
	private int perPageNum; //페이지당 보이는 게시글 seq 개수 
	private int rowStart; //DB 테이블 seq 첫번째 게시글 번호
	private int rowEnd; //DB 테이블 seq 마지막 게시글 번호
	
	public Paging() {
		this.pageNo = 1;
		this.perPageNum = 10;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		if(pageNo <= 0 ) {
			this.pageNo = 1;
			return;
		}
		this.pageNo = pageNo;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if(perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = perPageNum;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPageStart() {
		return (this.pageNo - 1) * perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((pageNo - 1) * perPageNum) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}

	@Override
	public String toString() {
		return "Paging [pageNo=" + pageNo + ", perPageNum=" + perPageNum + ", rowStart=" + rowStart + ", rowEnd="
				+ rowEnd + "]";
	}

	
}
