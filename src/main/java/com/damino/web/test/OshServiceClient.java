package com.damino.web.test;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class OshServiceClient {
	public static void main(String[] args) {
		//1. 스프링 컨테이너 구동
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		//2. 스프링 컨테이너로부터 BoardServiceImpl 객체를 Lookup 한다.
		OshService oshService = (OshService)container.getBean("oshtest");
		//3. 글 등록 기능 테스트
		OshTestVO vo = new OshTestVO();
		vo.setContent("insert 기능 테스트");
		oshService.insertContent(vo);
		
		//5. 스프링 컨테이너 종료
		container.close();
	}
}
