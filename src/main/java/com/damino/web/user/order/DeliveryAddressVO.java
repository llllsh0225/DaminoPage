package com.damino.web.user.order;

public class DeliveryAddressVO {
	private int seq; // ������ (PK)
	private String address; // �ּҸ�
	private String storename; // ��޸����
	private String storephone; // ��޸��� ��ȭ��ȣ
	private String userid; // ����� ���̵�
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
