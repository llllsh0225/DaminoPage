package com.damino.web.admin.member.coupon;

public class MakePromotionCouponVO {
	private String coupon_name; // ���θ�� ������
	private String ordertype; // �������� ����
	private int discountrate; // ������
	private int number; // ���� ����� ���� ��
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
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
}
