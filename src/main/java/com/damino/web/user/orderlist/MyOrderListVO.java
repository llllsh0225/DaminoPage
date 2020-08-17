package com.damino.web.user.orderlist;

import java.util.Date;

public class MyOrderListVO {
	private int orderseq;
	private String name;
	private Date regdate = new Date();
	private String address;
	private String tel;
	private String orderli;
	private int price;
	private String take;
	private String store;
	private String paytool;
	private String paystate;
	private String status;
	
	public int getOrderseq() {
		return orderseq;
	}
	public void setOrderseq(int orderseq) {
		this.orderseq = orderseq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getOrderli() {
		return orderli;
	}
	public void setOrderli(String orderli) {
		this.orderli = orderli;
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
	public String getPaystate() {
		return paystate;
	}
	public void setPaystate(String paystate) {
		this.paystate = paystate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "MyOrderListVO [orderseq=" + orderseq + ", name=" + name + ", regdate=" + regdate + ", address="
				+ address + ", tel=" + tel + ", orderli=" + orderli + ", price=" + price + ", take=" + take + ", store="
				+ store + ", paytool=" + paytool + ", paystate=" + paystate + ", status=" + status + "]";
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
