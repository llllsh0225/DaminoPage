package com.damino.web.user.goods;

public class GoodsPizzaVO {
	private String p_code;
	private String p_name;
	private String p_type;
	private String p_size;
	private int p_price;
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "GoodsPizzaVO [p_code=" + p_code + ", p_name=" + p_name + ", p_type=" + p_type + ", p_size=" + p_size
				+ ", p_price=" + p_price + ", p_dough=" + p_dough + ", p_image=" + p_image + ", seq=" + seq + "]";
	}
	
}
