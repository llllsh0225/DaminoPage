package com.damino.web.admin.menu;

import org.springframework.web.multipart.MultipartFile;

public class ToppingVO {
	private String t_name; // 토핑 제품명
	private String t_type; // 토핑 구분 (메인/치즈/애프터)
	private int t_price; // 토핑 가격
	private String t_image; // 토핑 제품이미지 파일명
	private MultipartFile uploadFile;
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
	}
	public int getT_price() {
		return t_price;
	}
	public void setT_price(int t_price) {
		this.t_price = t_price;
	}
	public String getT_image() {
		return t_image;
	}
	public void setT_image(String t_image) {
		this.t_image = t_image;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
}
