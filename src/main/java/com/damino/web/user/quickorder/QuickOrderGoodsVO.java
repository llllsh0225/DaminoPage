package com.damino.web.user.quickorder;

public class QuickOrderGoodsVO {
	private int seq; // 퀵오더메뉴 시퀀스 (PK)
	private String quick_goods; // 퀵오더 제품명
	private int quick_qty; // 퀵오더 제품 수량
	private int quick_price; // 퀵오더 제품 가격
	private int rowseq; // 퀵오더 제품테이블 행의 수
	private String userid; // 유저 아이디
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getQuick_goods() {
		return quick_goods;
	}
	public void setQuick_goods(String quick_goods) {
		this.quick_goods = quick_goods;
	}
	public int getQuick_qty() {
		return quick_qty;
	}
	public void setQuick_qty(int quick_qty) {
		this.quick_qty = quick_qty;
	}
	public int getQuick_price() {
		return quick_price;
	}
	public void setQuick_price(int quick_price) {
		this.quick_price = quick_price;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getRowseq() {
		return rowseq;
	}
	public void setRowseq(int rowseq) {
		this.rowseq = rowseq;
	}
}
