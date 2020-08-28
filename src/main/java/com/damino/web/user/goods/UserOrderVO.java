package com.damino.web.user.goods;

public class UserOrderVO {
	private String orderseq; // �ֹ���ȣ
	private String userid;
	private String username;
	private String orderdate; // �ֹ����� -> DB�� ���� �� DATE�� ����ȯ
	private String deliverytime; // ��޿����ð� -> DB�� ���� �� DATE�� ����ȯ
	private String address; // ����� �ּ�
	private String tel; // ������ ��ȭ��ȣ
	private String menus; // �ֹ� �޴�
	private int price; // �� ��������
	private String take; // ���or����
	private String store; // ��޸���
	private String paytool; // ��������
	private String paystatus; // ��������
	private String status; // �ֹ�����
	private String requirements; // �� ��û����
	
	public String getOrderseq() {
		return orderseq;
	}
	public void setOrderseq(String orderseq) {
		this.orderseq = orderseq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	public String getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(String deliverytime) {
		this.deliverytime = deliverytime;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMenus() {
		return menus;
	}
	public void setMenus(String menus) {
		this.menus = menus;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTake() {
		return take;
	}
	public void setTake(String take) {
		this.take = take;
	}
	public String getStore() {
		return store;
	}
	public void setStore(String store) {
		this.store = store;
	}
	public String getPaytool() {
		return paytool;
	}
	public void setPaytool(String paytool) {
		this.paytool = paytool;
	}
	public String getPaystatus() {
		return paystatus;
	}
	public void setPaystatus(String paystatus) {
		this.paystatus = paystatus;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRequirements() {
		return requirements;
	}
	public void setRequirements(String requirements) {
		this.requirements = requirements;
	}
}
