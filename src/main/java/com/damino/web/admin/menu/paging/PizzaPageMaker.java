package com.damino.web.admin.menu.paging;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PizzaPageMaker {
	private int totalCount;
	private int startPage; //���� ������
	private int endPage; //������ ������
	private boolean prev; //����
	private boolean next; //����
	private int displayPageNum = 10; //�������� �����ִ� �Խñ� ��
	private PizzaPaging pa;
	
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
	public PizzaPaging getPa() {
		return pa;
	}
	public void setPa(PizzaPaging pa) {
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
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("pageNo", pageNo)
							.queryParam("perPageNum", pa.getPerPageNum())
							.build();
		   
		return uriComponents.toUriString();
	}
}