package com.damino.web.user.quickorder;

public class QuickOrderGoodsVO {
	private int seq; // �������޴� ������ (PK)
	private String quick_goods; // ������ ��ǰ��
	private int quick_qty; // ������ ��ǰ ����
	private int quick_price; // ������ ��ǰ ����
	private int rowseq; // ������ ��ǰ���̺� ���� ��
	private String userid; // ���� ���̵�
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
