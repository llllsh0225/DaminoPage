package com.damino.web.user.board;

import java.util.Date;

public class NoticeBoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private Date regDate = new Date();
	private int cnt;
	private String flag;
	private String search; // 검색조건
	private String conditionTemp; // 검색키워드
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "NoticeBoardVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regDate=" + regDate + ", cnt=" + cnt + ", flag=" + flag + "]";
	}
	public String getConditionTemp() {
		return conditionTemp;
	}
	public void setConditionTemp(String conditionTemp) {
		this.conditionTemp = conditionTemp;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	
}
