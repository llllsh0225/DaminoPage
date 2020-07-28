package com.damino.web.user.board;

import java.util.Date;

public class QnaBoardVO {
	private int seq;
	private String writerId; //고객 id
	private String title;
	private String phone;
	private String email;
	private String qnaType; //문의 형태
	private Date regDate = new Date();
	private String content;
	private String storeRegion; //매장 지역
	private String storeName; //매장명
	private String result; //답변 처리 결과
	private String replyContent; //답변 내용
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getQnaType() {
		return qnaType;
	}
	public void setQnaType(String qnaType) {
		this.qnaType = qnaType;
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
	public String getStoreRegion() {
		return storeRegion;
	}
	public void setStoreRegion(String storeRegion) {
		this.storeRegion = storeRegion;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	
	@Override
	public String toString() {
		return "QnaBoardVO [seq=" + seq + ", writerId=" + writerId + ", title=" + title + ", phone=" + phone
				+ ", email=" + email + ", qnaType=" + qnaType + ", regDate=" + regDate + ", content=" + content
				+ ", storeRegion=" + storeRegion + ", storeName=" + storeName + ", result=" + result + ", replyContent="
				+ replyContent + "]";
	}
	
	
}