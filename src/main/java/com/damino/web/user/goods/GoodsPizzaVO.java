package com.damino.web.user.goods;

public class GoodsPizzaVO {
	private String p_code;
	private String p_name;
	private String p_type;
	private String p_size_m;
	private String p_size_l;
	private int p_price_m;
	private int p_price_l;
	private String p_dough;
	private String p_image;
	private int seq;
	
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
	public String getP_size_m() {
		return p_size_m;
	}
	public void setP_size_m(String p_size_m) {
		this.p_size_m = p_size_m;
	}
	public String getP_size_l() {
		return p_size_l;
	}
	public void setP_size_l(String p_size_l) {
		this.p_size_l = p_size_l;
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "GoodsPizzaVO [p_code=" + p_code + ", p_name=" + p_name + ", p_type=" + p_type + ", p_size_m=" + p_size_m
				+ ", p_size_l=" + p_size_l + ", p_price_m=" + p_price_m + ", p_price_l=" + p_price_l + ", p_dough="
				+ p_dough + ", p_image=" + p_image + ", seq=" + seq + "]";
	}
	
	
}
