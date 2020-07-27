package com.damino.web.user.board;

import java.util.Date;

public class QnaBoardVO {
	private int seq;
	private String writerId;
	private String title;
	private String phone;
	private String email;
	private String qnaType;
	private Date regDate = new Date();
	private String content;
	private String storeRegion;
	private String storeName;
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
	
	@Override
	public String toString() {
		return "QnaBoardVO [seq=" + seq + ", writerId=" + writerId + ", title=" + title + ", phone=" + phone
				+ ", email=" + email + ", qnaType=" + qnaType + ", regDate=" + regDate + ", content=" + content
				+ ", storeRegion=" + storeRegion + ", storeName=" + storeName + "]";
	}
	
	
}