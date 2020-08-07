package com.damino.web.admin.banner;

import org.springframework.web.multipart.MultipartFile;

public class BannerVO {
	private String banner_code; //��� �ڵ� 
	private String banner_name; //��� �̸�
	private String banner_alt; // ��� ����
	private String banner_image; //��� �̹��� 
	private String banner_originalname; //�����ڰ� �Է��� �̹��� �̸�
	private int banner_seq; //������ ��ȣ
	private MultipartFile uploadFile;
	
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
	public String getBanner_alt() {
		return banner_alt;
	}
	public void setBanner_alt(String banner_alt) {
		this.banner_alt = banner_alt;
	}
	public String getBanner_image() {
		return banner_image;
	}
	public void setBanner_image(String banner_image) {
		this.banner_image = banner_image;
	}
	public String getBanner_originalname() {
		return banner_originalname;
	}
	public void setBanner_originalname(String banner_originalname) {
		this.banner_originalname = banner_originalname;
	}
	public int getBanner_seq() {
		return banner_seq;
	}
	public void setBanner_seq(int banner_seq) {
		this.banner_seq = banner_seq;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	@Override
	public String toString() {
		return "BannerVO [banner_code=" + banner_code + ", banner_name=" + banner_name + ", banner_alt=" + banner_alt
				+ ", banner_image=" + banner_image + ", banner_originalname=" + banner_originalname + ", banner_seq="
				+ banner_seq + ", uploadFile=" + uploadFile + "]";
	}
	
	
	
	
}
