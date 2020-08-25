package com.damino.web.user.order;

public class StoreAddressVO {
	private int seq;
	private String storeregion;
	private String storename;
	private String storeaddress;
	private String detailaddress;
	private String storephone;
	private String userid;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getStoreregion() {
		return storeregion;
	}
	public void setStoreregion(String storeregion) {
		this.storeregion = storeregion;
	}

	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getStoreaddress() {
		return storeaddress;
	}
	public void setStoreaddress(String storeaddress) {
		this.storeaddress = storeaddress;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
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
		return "StoreAddressVO [seq=" + seq + ", storeregion=" + storeregion + ", storename=" + storename
				+ ", storeaddress=" + storeaddress + ", detailaddress=" + detailaddress + ", storephone=" + storephone
				+ ", userid=" + userid + "]";
	}

}
