package com.damino.web.user.banner;

public class UserBannerVO {
	//code, ÀÌ¸§, image, seq
	private String banner_code;
	private String banner_name;
	private String banner_image;
	private int banner_seq;
	
	public String getBanner_code() {
		return banner_code;
	}
	public void setBanner_code(String banner_code) {
		this.banner_code = banner_code;
	}
	public String getBanner_name() {
		return banner_name;
	}
	public void setBanner_name(String banner_name) {
		this.banner_name = banner_name;
	}
	public String getBanner_image() {
		return banner_image;
	}
	public void setBanner_image(String banner_image) {
		this.banner_image = banner_image;
	}
	public int getBanner_seq() {
		return banner_seq;
	}
	public void setBanner_seq(int banner_seq) {
		this.banner_seq = banner_seq;
	}
	
	@Override
	public String toString() {
		return "UserBannerVO [banner_code=" + banner_code + ", banner_name=" + banner_name + ", banner_image="
				+ banner_image + ", banner_seq=" + banner_seq + "]";
	}
	
	
}
