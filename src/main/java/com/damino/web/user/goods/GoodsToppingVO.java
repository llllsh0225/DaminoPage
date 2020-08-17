package com.damino.web.user.goods;

public class GoodsToppingVO {
	private String t_code;
	private String t_name;
	private String[] t_name2;
	private String t_type;
	private int t_price;
	private String t_image;
	private int seq;
	
	public String getT_code() {
		return t_code;
	}
	public void setT_code(String t_code) {
		this.t_code = t_code;
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
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	@Override
	public String toString() {
		return "GoodsToppingVO [t_code=" + t_code + ", t_name=" + t_name + ", t_type=" + t_type + ", t_price=" + t_price
				+ ", t_image=" + t_image + ", seq=" + seq + "]";
	}
	
	public String[] getT_name2() {
		return t_name2;
	}
	public void setT_name2(String[] t_name2) {
		this.t_name2 = t_name2;
	}
	
	
}
