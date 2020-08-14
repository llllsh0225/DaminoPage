package com.damino.web.user.quickorder;

public class QuickOrderAddressVO {
	private int seq; // 퀵오더 주소 시퀀스 (PK)
	private String address; // 퀵오더 주소
	private String storename; // 배달매장명
	private String storephone; // 배달매장 전화
	private int rowseq; // 퀵오더 주소 테이블 행 번호
	private String userid; // 유저 아이디
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getStorephone() {
		return storephone;
	}
	public void setStorephone(String storephone) {
		this.storephone = storephone;
	}
	public int getRowseq() {
		return rowseq;
	}
	public void setRowseq(int rowseq) {
		this.rowseq = rowseq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
}
