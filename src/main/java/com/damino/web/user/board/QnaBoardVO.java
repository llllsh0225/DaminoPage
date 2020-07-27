package com.damino.web.user.board;

import java.util.Date;

public class QnaBoardVO {
	private int seq;
	private String writer;
	private String phone;
	private String email;
	private Date regDate = new Date();
	private String content;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", writer=" + writer + ", phone=" + phone + ", email=" + email + ", regDate="
				+ regDate + ", content=" + content + "]";
	}
	
}
