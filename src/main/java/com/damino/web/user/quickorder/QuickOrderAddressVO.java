package com.damino.web.user.quickorder;

public class QuickOrderAddressVO {
	private int seq; // ������ �ּ� ������ (PK)
	private String address; // ������ �ּ�
	private String storename; // ��޸����
	private String storephone; // ��޸��� ��ȭ
	private int rowseq; // ������ �ּ� ���̺� �� ��ȣ
	private String userid; // ���� ���̵�
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
