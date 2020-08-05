package com.damino.web.user.terms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.terms.UserTermsService;

@Controller
public class UserTermsController {
	@Autowired
	private UserTermsService userTermsService;
	
	@RequestMapping(value="/privacy.do", method=RequestMethod.GET)
	public ModelAndView getPrivacy(UserTermsVO vo) {
		System.out.println("�������� ó����ħ ��");
		UserTermsVO privacy = userTermsService.getPrivacy(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/privacy");
		mav.addObject("privacy", privacy);
		return mav;
	}
	
	@RequestMapping(value="/law.do", method=RequestMethod.GET)
	public ModelAndView getLaw(UserTermsVO vo) {
		System.out.println("��� ��");
		UserTermsVO homepageLaw = userTermsService.getHomepageLaw(vo); //Ȩ������ �̿���
		UserTermsVO locationLaw = userTermsService.getLocationLaw(vo); //��ġ��� ���� ���
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/terms/law");
		mav.addObject("homepageLaw", homepageLaw);
		mav.addObject("locationLaw", locationLaw);
		return mav;
	}
}
