package com.damino.web.user.map;

public class MapVO {
	private int store;
	private double latitude;
	private double longitude;
	private String name;
	
	public int getStore() {
		return store;
	}
	public void setStore(int store) {
		this.store = store;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	@Override
	public String toString() {
		return "MapVO [store=" + store + ", latitude=" + latitude + ", longitude=" + longitude + ", name=" + name + "]";
	}
	
	
	
}
