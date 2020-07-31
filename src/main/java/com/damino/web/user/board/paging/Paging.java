package com.damino.web.user.board.paging;

public class Paging {
	private int pageNo; //ó�� ���۽� ���̴� ������ ��ȣ
	private int perPageNum; //�������� ���̴� �Խñ� seq ���� 
	private int rowStart; //DB ���̺� seq ù��° �Խñ� ��ȣ
	private int rowEnd; //DB ���̺� seq ������ �Խñ� ��ȣ
	
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
