package com.damino.web.admin.market;

public class MarketVO {
	private int seq;
	private String name;
	private String tel;
	private String address;
	private String location;
	private String time;
	private String etime;
	private String park;
	private String etc;
	private String car;
	

	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPark() {
		return park;
	}
	public void setPark(String park) {
		this.park = park;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	@Override
	public String toString() {
		return "MarketVO [seq=" + seq + ", name=" + name + ", tel=" + tel + ", address=" + address + ", location="
				+ location + ", time=" + time + ", etime=" + etime + ", park=" + park + ", etc=" + etc + ", car=" + car
				+ "]";
	}

	
	
}
