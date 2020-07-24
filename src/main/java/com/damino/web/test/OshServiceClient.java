package com.damino.web.test;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class OshServiceClient {
	public static void main(String[] args) {
		//1. ������ �����̳� ����
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		//2. ������ �����̳ʷκ��� BoardServiceImpl ��ü�� Lookup �Ѵ�.
		OshService oshService = (OshService)container.getBean("oshtest");
		//3. �� ��� ��� �׽�Ʈ
		OshTestVO vo = new OshTestVO();
		vo.setContent("insert ��� �׽�Ʈ");
		oshService.insertContent(vo);
		
		//5. ������ �����̳� ����
		container.close();
	}
}
