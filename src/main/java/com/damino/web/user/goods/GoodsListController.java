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
		System.out.println("제품 목록 열기");

		List<GoodsPizzaVO> goodsList = goodsListService.getPizzaList();

		mav.addObject("goodsList", goodsList);
		mav.setViewName("/goods/list");

		return mav;
	}
	
}
