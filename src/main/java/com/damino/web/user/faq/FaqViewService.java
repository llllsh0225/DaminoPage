package com.damino.web.user.faq;

import java.util.List;

public interface FaqViewService {
	public List<FaqViewVO> getHowToOrderPage(); // ���� �ֹ��ϱ� ������ ����
	public List<FaqViewVO> getOrderCheckPage(); // �ֹ� Ȯ�� ������ ����
	public List<FaqViewVO> getWrapOrderPage(); // ���� �ֹ� ������ ����
	public List<FaqViewVO> getSendPresentPage(); // ���� �����ϱ� ������ ����
	public List<FaqViewVO> getAboutHomepagePage(); // Ȩ������ ���� ������ ����
}
