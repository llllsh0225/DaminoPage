package com.damino.web.user.goods;

public class UserBasketVO {
	private String userid;
	private int seq; //��ٱ��� ������
	private int gubun; //��ǰ ���� ���� ����
	private String p_name; //���� �̸�
	private int p_count; //���� ����
	private String p_image; //���� �̹���
	private int p_price; //���� ���� ����
	private String p_size; //���� ������
	private String p_dough; //���� ����
	
	private String t_name; //�����̸�
	private String t_image; //���� �̹���
	private int t_price; //���� ����
	private int t_count; //���� ����
	
	private String s_name; //���̵��� �̸�
	private String s_image; //���̵��� �̹���
	private int s_price; //���̵��� ����
	private int s_count; //���̵��� ����

	private String d_name; //���� �̸�
	private String d_image; //���� �̹���
	private int d_price; //���� ����
	private int d_count; //���� ����
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getGubun() {
		return gubun;
	}
	public void setGubun(int gubun) {
		this.gubun = gubun;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_count() {
		return p_count;
	}
	public void setP_count(int p_count) {
		this.p_count = p_count;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public String getP_dough() {
		return p_dough;
	}
	public void setP_dough(String p_dough) {
		this.p_dough = p_dough;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_image() {
		return t_image;
	}
	public void setT_image(String t_image) {
		this.t_image = t_image;
	}
	public int getT_price() {
		return t_price;
	}
	public void setT_price(int t_price) {
		this.t_price = t_price;
	}
	public int getT_count() {
		return t_count;
	}
	public void setT_count(int t_count) {
		this.t_count = t_count;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_image() {
		return s_image;
	}
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public int getS_count() {
		return s_count;
	}
	public void setS_count(int s_count) {
		this.s_count = s_count;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_image() {
		return d_image;
	}
	public void setD_image(String d_image) {
		this.d_image = d_image;
	}
	public int getD_price() {
		return d_price;
	}
	public void setD_price(int d_price) {
		this.d_price = d_price;
	}
	public int getD_count() {
		return d_count;
	}
	public void setD_count(int d_count) {
		this.d_count = d_count;
	}
	
	@Override
	public String toString() {
		return "UserBasketVO [userid=" + userid + ", seq=" + seq + ", gubun=" + gubun + ", p_name=" + p_name
				+ ", p_count=" + p_count + ", p_image=" + p_image + ", p_price=" + p_price + ", p_size=" + p_size
				+ ", p_dough=" + p_dough + ", t_name=" + t_name + ", t_image=" + t_image + ", t_price=" + t_price
				+ ", t_count=" + t_count + ", s_name=" + s_name + ", s_image=" + s_image + ", s_price=" + s_price
				+ ", s_count=" + s_count + ", d_name=" + d_name + ", d_image=" + d_image + ", d_price=" + d_price
				+ ", d_count=" + d_count + "]";
	}

}