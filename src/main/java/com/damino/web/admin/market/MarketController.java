package com.damino.web.admin.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller // ���� Ŭ������ ��Ʈ�ѷ� ������ ���
public class MarketController {
	@Autowired
	private MarketService marketService;
	
	@RequestMapping("/storeView.admdo")
	public ModelAndView getMarketList() {
		System.out.println("���� ���");
		List<MarketVO> marketList = marketService.getMarketList();
		System.out.println(marketList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeView");
		mav.addObject("marketList", marketList);
		return mav;
	}

	@RequestMapping(value="/storeEdit.admdo", method=RequestMethod.GET)
	public ModelAndView getMarket(MarketVO vo) {
		System.out.println("���� ��");
		MarketVO market = marketService.getMarket(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeEdit");
		mav.addObject("market", market);
		System.out.println(market);
		return mav;
	}
	
	@RequestMapping(value="/updateMarket.admdo", method=RequestMethod.POST)
	public String updateMarket(@ModelAttribute MarketVO vo) {
		System.out.println("���� ���� ����");
		System.out.println("����� : " + vo.getName());
		System.out.println("��ȭ��ȣ : " + vo.getTel());
		System.out.println("�ּ� : " + vo.getAddress());
		System.out.println("��ġ : " + vo.getLocation());
		System.out.println("���½ð� : " + vo.getTime());
		System.out.println("�����ð� : " + vo.getEtime());
		System.out.println("���� :" + vo.getPark());
		System.out.println("Ư�̻��� : " + vo.getEtc());
		marketService.updateMarket(vo);
		return "redirect:storeView.admdo";
	}
	
	@RequestMapping(value="/insertMarket.admdo", method=RequestMethod.POST)
	public String insertMarket(@ModelAttribute MarketVO vo) {
		System.out.println("���� ���");
		System.out.println("����� : " + vo.getName());
		System.out.println("��ȭ��ȣ : " + vo.getTel());
		System.out.println("�ּ� : " + vo.getAddress());
		System.out.println("��ġ : " + vo.getLocation());
		System.out.println("���½ð� : " + vo.getTime());
		System.out.println("�����ð� : " + vo.getEtime());
		System.out.println("���� :" + vo.getPark());
		System.out.println("Ư�̻��� : " + vo.getEtc());
		marketService.insertMarket(vo);
		return "redirect:storeView.admdo";
	}
}
