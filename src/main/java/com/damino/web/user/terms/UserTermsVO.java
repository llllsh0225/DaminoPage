package com.damino.web.user.terms;

import java.util.Date;

public class UserTermsVO {
	private int seq;
	private String title;
	private String subtitle;
	private String content;
	private Date enforcementDate = new Date();
	private Date regDate = new Date();
	
	
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
	public Date getEnforcementDate() {
		return enforcementDate;
	}
	public void setEnforcementDate(Date enforcementDate) {
		this.enforcementDate = enforcementDate;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "TermsVO [seq=" + seq + ", title=" + title + ", subtitle=" + subtitle + ", content=" + content
				+ ", enforcementDate=" + enforcementDate + ", regDate=" + regDate + "]";
	}
	
}