package com.damino.web.admin.terms;

import java.util.Date;

public class TermsVO {
	private int seq;
	private String title;
	private String subtitle;
	private String content;
	private Date regDate = new Date();
	private String flag;
	
	
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
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
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "TermsVO [seq=" + seq + ", title=" + title + ", subtitle=" + subtitle + ", content=" + content
				+ ", regDate=" + regDate + ", flag=" + flag + "]";
	}
	
}
