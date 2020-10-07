package com.damino.web.admin.homepage.menu;

import org.springframework.web.multipart.MultipartFile;

public class ToppingVO {
	private String t_name; // 토핑 제품명
	private String t_type; // 토핑 구분 (메인/치즈/애프터)
	private int t_price; // 토핑 가격
	private String t_image; // 토핑 제품이미지 파일명
	private String t_originalFileName; // 실제 사용자가 지정한 사이드 제품이미지 파일명 
	private MultipartFile uploadFile;
	private String t_code;
	private int seq;
	
	
	
	
	public String getT_originalFileName() {
		return t_originalFileName;
	}
	public void setT_originalFileName(String t_originalFileName) {
		this.t_originalFileName = t_originalFileName;
	}
	public String getT_code() {
		return t_code;
	}
	public void setT_code(String t_code) {
		this.t_code = t_code;
	}
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
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
