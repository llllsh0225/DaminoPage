package com.damino.web.user.faq;

public class FaqViewVO {
	private int seq; // 게시글 시퀀스 번호
	private String title; // FAQ 제목
	private String faq_type; // FAQ 분류
	private String content; // FAQ 답변 내용
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
	public String getFaq_type() {
		return faq_type;
	}
	public void setFaq_type(String faq_type) {
		this.faq_type = faq_type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
