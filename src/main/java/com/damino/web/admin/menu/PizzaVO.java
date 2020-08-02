package com.damino.web.admin.menu;

import org.springframework.web.multipart.MultipartFile;

public class PizzaVO {
	
	private String p_code; // 피자 제품코드
	private String p_name; // 피자 제품명
	private String p_type; // 피자 구분 (프리미엄/클래식)
	private String p_size; // 피자 사이즈 (L/M)
	private int p_price; // 피자 가격
	private String p_dough; // 선택 가능 도우
	private String p_image; // 제품 이미지 파일명
	private MultipartFile uploadFile;
	private int seq;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	// ----- 영양성분 ------
	private int gross_weight; // 피자 총중량
	private String onetime_basis; // 1회분 기준
	private int onetime_weight; // 1회분 중량
	private int kcal; // 1회분 열량
	private int protein; // 1회분 단백질
	private int fat; // 1회분 포화지방
	private int natrium; // 1회분 나트륨
	private int sugars; // 1회분 당류
	
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_dough() {
		return p_dough;
	}
	public void setP_dough(String p_dough) {
		this.p_dough = p_dough;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	
	public int getGross_weight() {
		return gross_weight;
	}
	public void setGross_weight(int gross_weight) {
		this.gross_weight = gross_weight;
	}
	public String getOnetime_basis() {
		return onetime_basis;
	}
	public void setOnetime_basis(String onetime_basis) {
		this.onetime_basis = onetime_basis;
	}
	public int getOnetime_weight() {
		return onetime_weight;
	}
	public void setOnetime_weight(int onetime_weight) {
		this.onetime_weight = onetime_weight;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	public int getProtein() {
		return protein;
	}
	public void setProtein(int protein) {
		this.protein = protein;
	}
	public int getFat() {
		return fat;
	}
	public void setFat(int fat) {
		this.fat = fat;
	}
	public int getNatrium() {
		return natrium;
	}
	public void setNatrium(int natrium) {
		this.natrium = natrium;
	}
	public int getSugars() {
		return sugars;
	}
	public void setSugars(int sugars) {
		this.sugars = sugars;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "PizzaVO [p_code=" + p_code + ", p_name=" + p_name + ", p_type=" + p_type + ", p_size=" + p_size
				+ ", p_price=" + p_price + ", p_dough=" + p_dough + ", p_image=" + p_image + ", uploadFile="
				+ uploadFile + ", seq=" + seq + ", gross_weight=" + gross_weight + ", onetime_basis=" + onetime_basis
				+ ", onetime_weight=" + onetime_weight + ", kcal=" + kcal + ", protein=" + protein + ", fat=" + fat
				+ ", natrium=" + natrium + ", sugars=" + sugars + "]";
	}
	
	
}
