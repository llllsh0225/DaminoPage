package com.damino.web.user.board;

public class NotciePagingVO {
	private int nowpage;
	private int startpage;
	private int endpage;
	private int total;
	private int count;
	private int lastpage;
	private int start;
	private int end;
	private int countpage=5;
	
	public NotciePagingVO() {
		
	}
	public NotciePagingVO(int total, int nowpage, int count) {
		setNowpage(nowpage);
		setCount(count);
		setTotal(total);
		calcLastPage(getTotal(), getCount());
		calcStartEndPage(getNowpage(), countpage);
		calcStartEnd(getNowpage(), getCount());
	}
	//제일 마지막페이지 계산
	public void calcLastPage(int total, int count) {
		setLastpage((int) Math.ceil((double)total/(double)count));
	}
	//시작, 끝 페이지 계산
	public void calcStartEndPage(int nowpage, int countpage) {
		setEndpage(((int)Math.ceil((double)nowpage/(double)countpage))*countpage);
		if(getLastpage()<getEndpage()) {
			setEndpage(getLastpage());
		}
		setStartpage(getEndpage()-countpage+1);
		if(getStartpage() < 1) {
			setStartpage(1);
		}
	}
	//DB쿼리에서 사용할 start, end 값 계산
	public void calcStartEnd(int nowpage, int count) {
		
	}
	
	
	public int getNowpage() {
		return nowpage;
	}
	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}
	public int getStartpage() {
		return startpage;
	}
	public void setStartpage(int startpage) {
		this.startpage = startpage;
	}
	public int getEndpage() {
		return endpage;
	}
	public void setEndpage(int endpage) {
		this.endpage = endpage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getLastpage() {
		return lastpage;
	}
	public void setLastpage(int lastpage) {
		this.lastpage = lastpage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	
}
