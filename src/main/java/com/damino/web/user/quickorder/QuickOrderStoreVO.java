package com.damino.web.user.quickorder;

public class QuickOrderStoreVO {
	private int seq; // ������ (PK)
	private String storename; // ��������
	private String storephone; // ������ȭ
	private String storeaddr; // �����ּ�
	private int rowseq; // ���̺� �� ��ȣ
	private String userid; // �������̵�
	private String default_yn; // ����Ʈ ����
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
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
	public String getStoreaddr() {
		return storeaddr;
	}
	public void setStoreaddr(String storeaddr) {
		this.storeaddr = storeaddr;
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
	public String getDefault_yn() {
		return default_yn;
	}
	public void setDefault_yn(String default_yn) {
		this.default_yn = default_yn;
	}
	
	
}
