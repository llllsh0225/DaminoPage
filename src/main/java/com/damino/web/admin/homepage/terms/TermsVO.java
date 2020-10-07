package com.damino.web.admin.homepage.terms;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TermsVO {
	private int seq;
	private String title;
	private String subtitle;
	private String content;
	private String enforcementDate;
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
	
	public String getEnforcementDate() {
		return enforcementDate;
	}
	public void setEnforcementDate(String enforcementDate) {
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
