package com.damino.web.user.order;

public class DeliveryAddressVO {
	private int seq; // 시퀀스 (PK)
	private String address; // 주소명
	private String storename; // 배달매장명
	private String storephone; // 배달매장 전화번호
	private String userid; // 사용자 아이디
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
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	@Override
	public String toString() {
		return "DeliveryAddressVO [seq=" + seq + ", address=" + address + ", storename=" + storename + ", storephone="
				+ storephone + ", userid=" + userid + "]";
	}
	
	
}
