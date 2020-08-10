package com.damino.web.user.map;

public class MapVO {
	private String storeCode;
	private String storeRegion;
	private String storeName;
	private String storeAddress;
	private String storePhone;
	private String parking;
	private String referinfo;
	public String getStoreCode() {
		return storeCode;
	}
	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
	public String getStoreRegion() {
		return storeRegion;
	}
	public void setStoreRegion(String storeRegion) {
		this.storeRegion = storeRegion;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreAddress() {
		return storeAddress;
	}
	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}
	public String getStorePhone() {
		return storePhone;
	}
	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
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
	@Override
	public String toString() {
		return "MapVO [storeCode=" + storeCode + ", storeRegion=" + storeRegion + ", storeName=" + storeName
				+ ", storeAddress=" + storeAddress + ", storePhone=" + storePhone + ", parking=" + parking
				+ ", referinfo=" + referinfo + "]";
	}
	
	
	
}
