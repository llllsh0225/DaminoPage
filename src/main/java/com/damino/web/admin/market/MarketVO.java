package com.damino.web.admin.market;

public class MarketVO {
	private String name;
	private String tel;
	private String address;
	private String location;
	private String time;
	private String park;
	private String etc;
	
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
		return "MarketVO [name=" + name + ", tel=" + tel + ", address=" + address + ", location=" + location + ", time="
				+ time + ", park=" + park + ", etc=" + etc + "]";
	}
	
}
