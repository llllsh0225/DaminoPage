package com.damino.web.admin.menu;

import org.springframework.web.multipart.MultipartFile;

public class PizzaVO {
	
	private String p_code; // ���� ��ǰ�ڵ�
	private String p_name; // ���� ��ǰ��
	private String p_type; // ���� ���� (�����̾�/Ŭ����)
	private String p_size; // ���� ������ (L/M)
	private int p_price; // ���� ����
	private String p_dough; // ���� ���� ����
	private String p_image; // ��ǰ �̹��� ���ϸ�
	private MultipartFile uploadFile;
	private int seq;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	// ----- ���缺�� ------
	private int gross_weight; // ���� ���߷�
	private String onetime_basis; // 1ȸ�� ����
	private int onetime_weight; // 1ȸ�� �߷�
	private int kcal; // 1ȸ�� ����
	private int protein; // 1ȸ�� �ܹ���
	private int fat; // 1ȸ�� ��ȭ����
	private int natrium; // 1ȸ�� ��Ʈ��
	private int sugars; // 1ȸ�� ���
	
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
