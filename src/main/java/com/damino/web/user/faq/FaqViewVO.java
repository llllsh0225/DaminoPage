package com.damino.web.user.faq;

public class FaqViewVO {
	private int seq; // �Խñ� ������ ��ȣ
	private String title; // FAQ ����
	private String faq_type; // FAQ �з�
	private String content; // FAQ �亯 ����
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
