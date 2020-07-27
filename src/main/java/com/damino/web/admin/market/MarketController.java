package com.damino.web.admin.market;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller // 현재 클래스를 컨트롤러 빈으로 등록
public class MarketController {
	@Autowired
	private MarketService marketService;
	
	@RequestMapping("/storeView.admdo")
	public ModelAndView getMarketList() {
		System.out.println("매장 목록");
		List<MarketVO> marketList = marketService.getMarketList();
		System.out.println(marketList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeView");
		mav.addObject("marketList", marketList);
		return mav;
	}

	@RequestMapping(value="/storeEdit.admdo", method=RequestMethod.GET)
	public ModelAndView getMarket(MarketVO vo) {
		System.out.println("매장 상세");
		MarketVO market = marketService.getMarket(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeEdit");
		mav.addObject("market", market);
		System.out.println(market);
		return mav;
	}
	
	@RequestMapping(value="/updateMarket.admdo", method=RequestMethod.POST)
	public String updateMarket(@ModelAttribute MarketVO vo) {
		System.out.println("매장 정보 수정");
		System.out.println("매장명 : " + vo.getName());
		System.out.println("전화번호 : " + vo.getTel());
		System.out.println("주소 : " + vo.getAddress());
		System.out.println("위치 : " + vo.getLocation());
		System.out.println("오픈시간 : " + vo.getTime());
		System.out.println("마감시간 : " + vo.getEtime());
		System.out.println("주차 :" + vo.getPark());
		System.out.println("특이사항 : " + vo.getEtc());
		marketService.updateMarket(vo);
		return "redirect:storeView.admdo";
	}
	
	@RequestMapping(value="/insertMarket.admdo", method=RequestMethod.POST)
	public String insertMarket(@ModelAttribute MarketVO vo) {
		System.out.println("매장 등록");
		System.out.println("매장명 : " + vo.getName());
		System.out.println("전화번호 : " + vo.getTel());
		System.out.println("주소 : " + vo.getAddress());
		System.out.println("위치 : " + vo.getLocation());
		System.out.println("오픈시간 : " + vo.getTime());
		System.out.println("마감시간 : " + vo.getEtime());
		System.out.println("주차 :" + vo.getPark());
		System.out.println("특이사항 : " + vo.getEtc());
		marketService.insertMarket(vo);
		return "redirect:storeView.admdo";
	}
}
