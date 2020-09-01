package com.damino.web.user.board;

public class MailVO {
	private String from; // 보내는 사람 주소
	private String to; // 받는 사람 주소
	private String content; // 메일 내용
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
