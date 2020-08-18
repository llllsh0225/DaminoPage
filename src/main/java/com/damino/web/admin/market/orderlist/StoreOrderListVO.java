package com.damino.web.admin.market.orderlist;

import java.util.Date;

public class StoreOrderListVO {
	private int orderseq;
	private String userid;
	private String username;
	private Date orderdate = new Date();
	private Date deliverytime = new Date();
	private String address;
	private String tel;
	private String menus;
	private int price;
	private String take;
	private String store;
	private String paytool;
	private String paystatus;
	private String status;
	private String requirement;
	
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public int getOrderseq() {
		return orderseq;
	}
	public void setOrderseq(int orderseq) {
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
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public Date getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(Date deliverytime) {
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
	@Override
	public String toString() {
		return "StoreOrderListVO [orderseq=" + orderseq + ", userid=" + userid + ", username=" + username
				+ ", orderdate=" + orderdate + ", deliverytime=" + deliverytime + ", address=" + address + ", tel="
				+ tel + ", menus=" + menus + ", price=" + price + ", take=" + take + ", store=" + store + ", paytool="
				+ paytool + ", paystatus=" + paystatus + ", status=" + status + ", requirement=" + requirement + "]";
	}
	
	
}
