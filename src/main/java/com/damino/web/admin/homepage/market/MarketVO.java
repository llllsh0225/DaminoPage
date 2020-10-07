package com.damino.web.admin.homepage.market;

public class MarketVO {
	private int seq;
	private String storeregion;
	private String storename;
	private String zipcode;
	private String storeaddress;
	private String detailaddress;
	private String storephone;
	private String parking;
	private String referinfo;
	private String parkingplace;
	private String opentime;
	private String endtime;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
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
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getReferinfo() {
		return referinfo;
	}
	public void setReferinfo(String referinfo) {
		this.referinfo = referinfo;
	}
	public String getParkingplace() {
		return parkingplace;
	}
	public void setParkingplace(String parkingplace) {
		this.parkingplace = parkingplace;
	}
	public String getOpentime() {
		return opentime;
	}
	public void setOpentime(String opentime) {
		this.opentime = opentime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	@Override
	public String toString() {
		return "MarketVO [seq=" + seq + ", storeregion=" + storeregion + ", storename=" + storename + ", zipcode="
				+ zipcode + ", storeaddress=" + storeaddress + ", detailaddress=" + detailaddress + ", storephone="
				+ storephone + ", parking=" + parking + ", referinfo=" + referinfo + ", parkingplace=" + parkingplace
				+ ", opentime=" + opentime + ", endtime=" + endtime + "]";
	}

	
	
}
