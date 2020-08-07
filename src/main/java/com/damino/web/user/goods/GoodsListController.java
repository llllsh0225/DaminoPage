package com.damino.web.user.goods;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	/*
	 * @RequestMapping(value ="/goods/detailSlide.do", method = RequestMethod.GET)
	 * public String goodsDetail(@ModelAttribute GoodsPizzaVO vo) {
	 * 
	 * //서비스에서 p_code, p_name 기준 조회하는 쿼리 제작해야함
	 * System.out.println("[상품 상세보기 화면 진입 시도] :"); System.out.println("피자 코드 : " +
	 * vo.getP_code()); System.out.println("피자 이미지 : " + vo.getP_image());
	 * goodsListService.getUserPizzaGoods(vo); return "redirect:goodslist.do"; }
	 */
	
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView goView(ModelAndView mav,@ModelAttribute GoodsPizzaVO vo, HttpServletRequest request) {
		System.out.println("사용자 선택 피자메뉴 열기");
		
		String code = vo.getP_code();
		String name = vo.getP_name();
		System.out.println("code" + code);
		System.out.println("name" + name);
		
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);
		mav.addObject("goodsDetail", goodsDetail);
		mav.setViewName("/goods/detail_goods");

		return mav;
	}
	
}
