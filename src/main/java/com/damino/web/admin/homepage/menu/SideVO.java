package com.damino.web.admin.homepage.menu;

import org.springframework.web.multipart.MultipartFile;

public class SideVO {
	private String s_code; // ���̵� ��ǰ�ڵ� (PK)
	private String s_name; // ���̵� ��ǰ��
	private int s_price; // ���̵� ����
	private String s_image; // ���̵� ��ǰ�̹��� ���ϸ�
	private String s_originalFileName; // ���� ����ڰ� ������ ���̵� ��ǰ�̹��� ���ϸ� 
	private MultipartFile uploadFile;
	private int seq;
	
	//------ ���缺�� -------
	private int gross_weight; // ���߷�
	private int kcal; // ����
	private int protein; // �ܹ���
	private int fat; // ��ȭ����
	private int natrium; // ��Ʈ��
	private int sugars; // ���
	public String getS_code() {
		return s_code;
	}
	public void setS_code(String s_code) {
		this.s_code = s_code;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public String getS_image() {
		return s_image;
	}
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}
	public String getS_originalFileName() {
		return s_originalFileName;
	}
	public void setS_originalFileName(String s_originalFileName) {
		this.s_originalFileName = s_originalFileName;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getGross_weight() {
		return gross_weight;
	}
	public void setGross_weight(int gross_weight) {
		this.gross_weight = gross_weight;
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
	
}
