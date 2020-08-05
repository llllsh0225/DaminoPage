package com.damino.web.user.goods;

public class GoodsSideVO {
	private String s_code;
	private String s_name;
	private int s_price;
	private String s_image;
	private int seq;
	
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "GoodsSideVO [s_code=" + s_code + ", s_name=" + s_name + ", s_price=" + s_price + ", s_image=" + s_image
				+ ", seq=" + seq + "]";
	}
	
	
}
