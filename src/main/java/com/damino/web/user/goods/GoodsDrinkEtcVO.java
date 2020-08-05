package com.damino.web.user.goods;

public class GoodsDrinkEtcVO {
	private String d_code;
	private String d_name;
	private int d_price;
	private String d_image;
	private int seq;
	
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public int getD_price() {
		return d_price;
	}
	public void setD_price(int d_price) {
		this.d_price = d_price;
	}
	public String getD_image() {
		return d_image;
	}
	public void setD_image(String d_image) {
		this.d_image = d_image;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "GoodsDrinkEtcVO [d_code=" + d_code + ", d_name=" + d_name + ", d_price=" + d_price + ", d_image="
				+ d_image + ", seq=" + seq + "]";
	}
	
}
