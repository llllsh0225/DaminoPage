package com.damino.web.admin.menu;

import org.springframework.web.multipart.MultipartFile;

public class DrinkEtcVO {
	private String d_name; // 음료&기타 제품명
	private String d_price; // 음료&기타 가격
	private String d_image; // 음료&기타 제품이미지 파일명
	private MultipartFile uploadFile;
	
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_price() {
		return d_price;
	}
	public void setD_price(String d_price) {
		this.d_price = d_price;
	}
	public String getD_image() {
		return d_image;
	}
	public void setD_image(String d_image) {
		this.d_image = d_image;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
}
