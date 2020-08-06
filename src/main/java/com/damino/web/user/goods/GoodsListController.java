package com.damino.web.user.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.faq.FaqViewVO;

@Controller
public class GoodsListController {
	@Autowired
	private GoodsListService goodsListService;
	
	@RequestMapping("/goodslist.do") 
	public ModelAndView getPizzaList(ModelAndView mav) {
		System.out.println("��ǰ ��� ����");

		List<GoodsPizzaVO> goodsList = goodsListService.getPizzaList();

		mav.addObject("goodsList", goodsList);
		mav.setViewName("/goods/list");

		return mav;
	}
	
	@RequestMapping("/goodsSideList.do") 
	public ModelAndView getSideList(ModelAndView mav) {
		System.out.println("���̵��� ����Ʈ ����");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		mav.addObject("goodsSideList", goodsSideList);
		mav.setViewName("/goods/list");

		return mav;
	}

	/*
	 * @RequestMapping("/goodsToppingList.do") public ModelAndView
	 * getToppingList(ModelAndView mav) { System.out.println("���� ����Ʈ ����");
	 * 
	 * List<GoodsToppingVO> goodsToppingList = goodsListService.getToppingList();
	 * 
	 * mav.addObject("goodsList", goodsToppingList); mav.setViewName("/goods/list");
	 * 
	 * return mav; }
	 */
	@RequestMapping("/goodsDrinkEtcList.do") 
	public ModelAndView getDrinkEtcList(ModelAndView mav) {
		System.out.println("����&��Ÿ �޴� ����");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/list");

		return mav;
	}
	
}
