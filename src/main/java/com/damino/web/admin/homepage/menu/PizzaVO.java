package com.damino.web.admin.homepage.menu;

import org.springframework.web.multipart.MultipartFile;

public class PizzaVO {
	
	private String p_code; // ���� ��ǰ�ڵ�
	private String p_name; // ���� ��ǰ��
	private String p_type; // ���� ���� (�����̾�/Ŭ����)
	private int p_price_m; // ���� ���� (M)
	private int p_price_l; // ���� ���� (L)
	private String p_dough; // ���� ���� ����
	private String p_image; // ���� ����� ��ǰ �̹��� ���ϸ�
	private String p_originalFileName; // ����ڰ� �Է��� �̹��� ���ϸ� 
	private MultipartFile uploadFile;
	private int seq;

	// ----- ���缺�� ------
	private int gross_weight_m; // ���� ���߷� (M)
	private int gross_weight_l; // ���� ���߷� (L)
	private String onetime_basis_m; // 1ȸ�� ���� (M)
	private String onetime_basis_l; // 1ȸ�� ���� (L)
	private int onetime_weight_m; // 1ȸ�� �߷� (M)
	private int onetime_weight_l; // 1ȸ�� �߷� (L)
	private int kcal_m; // 1ȸ�� ���� (M)
	private int kcal_l; // 1ȸ�� ���� (L)
	private int protein_m; // 1ȸ�� �ܹ��� (M)
	private int protein_l; // 1ȸ�� �ܹ��� (L)
	private int fat_m; // 1ȸ�� ��ȭ���� (M)
	private int fat_l; // 1ȸ�� ��ȭ���� (L)
	private int natrium_m; // 1ȸ�� ��Ʈ�� (M)
	private int natrium_l; // 1ȸ�� ��Ʈ�� (L)
	private int sugars_m; // 1ȸ�� ��� (M)
	private int sugars_l; // 1ȸ�� ��� (L)
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
	public int getP_price_m() {
		return p_price_m;
	}
	public void setP_price_m(int p_price_m) {
		this.p_price_m = p_price_m;
	}
	public int getP_price_l() {
		return p_price_l;
	}
	public void setP_price_l(int p_price_l) {
		this.p_price_l = p_price_l;
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
	public int getGross_weight_m() {
		return gross_weight_m;
	}
	public void setGross_weight_m(int gross_weight_m) {
		this.gross_weight_m = gross_weight_m;
	}
	public int getGross_weight_l() {
		return gross_weight_l;
	}
	public void setGross_weight_l(int gross_weight_l) {
		this.gross_weight_l = gross_weight_l;
	}
	public String getOnetime_basis_m() {
		return onetime_basis_m;
	}
	public void setOnetime_basis_m(String onetime_basis_m) {
		this.onetime_basis_m = onetime_basis_m;
	}
	public String getOnetime_basis_l() {
		return onetime_basis_l;
	}
	public void setOnetime_basis_l(String onetime_basis_l) {
		this.onetime_basis_l = onetime_basis_l;
	}
	public int getOnetime_weight_m() {
		return onetime_weight_m;
	}
	public void setOnetime_weight_m(int onetime_weight_m) {
		this.onetime_weight_m = onetime_weight_m;
	}
	public int getOnetime_weight_l() {
		return onetime_weight_l;
	}
	public void setOnetime_weight_l(int onetime_weight_l) {
		this.onetime_weight_l = onetime_weight_l;
	}
	public int getKcal_m() {
		return kcal_m;
	}
	public void setKcal_m(int kcal_m) {
		this.kcal_m = kcal_m;
	}
	public int getKcal_l() {
		return kcal_l;
	}
	public void setKcal_l(int kcal_l) {
		this.kcal_l = kcal_l;
	}
	public int getProtein_m() {
		return protein_m;
	}
	public void setProtein_m(int protein_m) {
		this.protein_m = protein_m;
	}
	public int getProtein_l() {
		return protein_l;
	}
	public void setProtein_l(int protein_l) {
		this.protein_l = protein_l;
	}
	public int getFat_m() {
		return fat_m;
	}
	public void setFat_m(int fat_m) {
		this.fat_m = fat_m;
	}
	public int getFat_l() {
		return fat_l;
	}
	public void setFat_l(int fat_l) {
		this.fat_l = fat_l;
	}
	public int getNatrium_m() {
		return natrium_m;
	}
	public void setNatrium_m(int natrium_m) {
		this.natrium_m = natrium_m;
	}
	public int getNatrium_l() {
		return natrium_l;
	}
	public void setNatrium_l(int natrium_l) {
		this.natrium_l = natrium_l;
	}
	public int getSugars_m() {
		return sugars_m;
	}
	public void setSugars_m(int sugars_m) {
		this.sugars_m = sugars_m;
	}
	public int getSugars_l() {
		return sugars_l;
	}
	public void setSugars_l(int sugars_l) {
		this.sugars_l = sugars_l;
	}
	public String getP_originalFileName() {
		return p_originalFileName;
	}
	public void setP_originalFileName(String p_originalFileName) {
		this.p_originalFileName = p_originalFileName;
	}
	
}
