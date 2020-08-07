package com.damino.web.user.goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GoodsListController {
	@Autowired
	private GoodsListService goodsListService;
	
	@RequestMapping("/goodslist.do") 
	public ModelAndView getPizzaList(ModelAndView mav) {
		System.out.println("제품 목록 열기");
		
		List<GoodsPizzaVO> goodsPremiumList = goodsListService.getPizzaList();
		List<GoodsPizzaVO> goodsClassicList = goodsListService.getPizzaClassicList();
		
		mav.addObject("goodsPremiumList", goodsPremiumList);
		mav.addObject("goodsClassicList", goodsClassicList);
		
		System.out.println("프리미엄 피자 리스트 : " + goodsPremiumList);
		mav.setViewName("/goods/list");
		
		return mav;
	}
	
	@RequestMapping("/goodsSideList.do") 
	public ModelAndView getSideList(ModelAndView mav) {
		System.out.println("사이드디시 리스트 열기");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		mav.addObject("goodsSideList", goodsSideList);
		mav.setViewName("/goods/side_list");

		return mav;
	}

	/*
	 * @RequestMapping("/goodsToppingList.do") public ModelAndView
	 * getToppingList(ModelAndView mav) { System.out.println("토핑 리스트 열기");
	 * 
	 * List<GoodsToppingVO> goodsToppingList = goodsListService.getToppingList();
	 * 
	 * mav.addObject("goodsList", goodsToppingList); mav.setViewName("/goods/list");
	 * 
	 * return mav; }
	 */
	@RequestMapping("/goodsDrinkEtcList.do") 
	public ModelAndView getDrinkEtcList(ModelAndView mav) {
		System.out.println("음료&기타 메뉴 열기");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/drink_list");

		return mav;
	}
	
}
