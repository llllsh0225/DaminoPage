package com.damino.web.user.coupon;

import java.util.Date;

public class CouponVO {
	private String coupon_code; // �����ڵ�
	private int seq; // ���� ������ �ѹ�
	private String coupon_name; // ������
	private String ordertype; // ���� ���� Ÿ�� (���/����)
	private int discountrate; // ������
	private Date regdate = new Date(); // ���� �����
	private Date validity; // ���� ��ȿ�Ⱓ
	private String chkusable; // ��� ���ɿ��� (Y/N)
	private String userid; // ����� ���̵�
	private String coupon_type; // ���� �з� (MANIA/PROMOTION)
	
	public String getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(String coupon_code) {
		this.coupon_code = coupon_code;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public String getOrdertype() {
		return ordertype;
	}
	public void setOrdertype(String ordertype) {
		this.ordertype = ordertype;
	}
	public int getDiscountrate() {
		return discountrate;
	}
	public void setDiscountrate(int discountrate) {
		this.discountrate = discountrate;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getValidity() {
		return validity;
	}
	public void setValidity(Date validity) {
		this.validity = validity;
	}
	public String getChkusable() {
		return chkusable;
	}
	public void setChkusable(String chkusable) {
		this.chkusable = chkusable;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCoupon_type() {
		return coupon_type;
	}
	public void setCoupon_type(String coupon_type) {
		this.coupon_type = coupon_type;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
}
