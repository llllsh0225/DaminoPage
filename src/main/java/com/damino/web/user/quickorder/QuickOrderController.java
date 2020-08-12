package com.damino.web.user.quickorder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.goods.GoodsListService;
import com.damino.web.user.goods.GoodsToppingVO;

@Controller
public class QuickOrderController {
	@Autowired
	private QuickOrderService quickOrderService;
	@Autowired
	private GoodsListService goodsListService;
	
	@RequestMapping("/quickOrderSetting.do")
	public ModelAndView quickOrderSetting(ModelAndView mav) {
		System.out.println("퀵오더 설정페이지 열기");
		
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();
		
		mav.addObject("mainToppingList", mainToppingList);
		mav.addObject("cheezeToppingList", cheezeToppingList);
		mav.addObject("afterToppingList", afterToppingList);
		
		mav.setViewName("/quickorder/quickOrder_defaultSetting");
		return mav;
	}
	
	@RequestMapping(value="/getPizzaNames.do", method=RequestMethod.POST)
	@ResponseBody
	public List<String> getPizzaNames(@RequestBody Map<String, Object> param){
		String ctgr = (String)param.get("ctgr"); // 카테고리명 (피자)
		System.out.println("제품 카테고리 : " + ctgr);
		
		List<PizzaVO> p_name = quickOrderService.getPizzaNames();
		List<String> p_name_list = new ArrayList<String>();
		for(int i=0; i<p_name.size(); i++) {
			PizzaVO vo = p_name.get(i);
			String pizzaName = vo.getP_name();
			System.out.println(pizzaName);
			p_name_list.add(pizzaName);
		}
		return p_name_list;
	}
	
	@RequestMapping(value="/getPizzaDough.do", method=RequestMethod.POST)
	@ResponseBody
	public List<String> getPizzaDough(@RequestBody Map<String, Object> param){
		String p_name = (String) param.get("p_name");
		System.out.println("제품명 : " + p_name);
		
		PizzaVO p_dough = quickOrderService.getPizzaDough(p_name);
		String doughs = p_dough.getP_dough();
		
		String[] doughArray = doughs.split(",");
		
		List<String> doughList = new ArrayList<String>();
		
		for(int i=0; i<doughArray.length; i++) {
			doughList.add(doughArray[i]);
			System.out.println(doughArray[i]);
		}
		
		return doughList;
	}
	
	@RequestMapping(value="/getSideNames.do", method=RequestMethod.POST)
	@ResponseBody
	public List<String> getSideNames(@RequestBody Map<String, Object> param){
		String ctgr = (String) param.get("ctgr");
		System.out.println("제품 카테고리 : " + ctgr);
		
		List<SideVO> s_name = quickOrderService.getSideNames();
		List<String> s_name_list = new ArrayList<String>();
		
		for(int i=0; i<s_name.size(); i++) {
			SideVO vo = s_name.get(i);
			String sideName = vo.getS_name();
			System.out.println(sideName);
			s_name_list.add(sideName);
		}
		
		return s_name_list;
	}
	
	@RequestMapping(value="/getDrinkNames.do", method=RequestMethod.POST)
	@ResponseBody
	public List<String> getDrinkNames(@RequestBody Map<String, Object> param){
		String ctgr = (String) param.get("ctgr");
		System.out.println("제품 카테고리 : " + ctgr);
		
		List<DrinkEtcVO> d_name = quickOrderService.getDrinkNames();
		List<String> d_name_list = new ArrayList<String>();
		
		for(int i=0; i<d_name.size(); i++) {
			DrinkEtcVO vo = d_name.get(i);
			String drinkName = vo.getD_name();
			System.out.println(drinkName);
			d_name_list.add(drinkName);
		}
		
		return d_name_list;
	}
	
	@RequestMapping(value="/getGoodsPrice.do", method=RequestMethod.POST)
	@ResponseBody
	public List<Integer> getGoodsPrice(@RequestBody Map<String, Object> param){
		String ctgr = (String) param.get("selectCtgr");
		String goodsName = (String) param.get("selectGoodsName");
		String dough = (String) param.get("selectDough");
		String size = (String) param.get("selectSize");
		
		List<Integer> goodsPrice = new ArrayList<Integer>();
		
		switch (ctgr) {
		case "PIZZA" : 
			if(size.equals("L")) {
				System.out.println("L사이즈 피자 가격 받아오기");
				int pizzaLPrice = quickOrderService.getPizzaLPrice(goodsName);
				int doughPrice = quickOrderService.getDoughPrice(dough);
				goodsPrice.add(pizzaLPrice);
				goodsPrice.add(doughPrice);
			}else {
				System.out.println("M사이즈 피자 가격 받아오기");
			}
			break;
		case "SIDE" :
			System.out.println("사이드에용..");
			break;
		case "DRINK" :
			System.out.println("음료에용..");
			break;
		}
		return goodsPrice;
	}
	
	@RequestMapping(value="/getToppingPrice.do", method=RequestMethod.POST)
	@ResponseBody
	public List<Integer> getToppingPrice(@RequestParam(value="toppingList[]") List<String> toppingList){
		
		Map<String, Object> toppings = new HashMap<String, Object>();
		List<Integer> toppingPriceList = new ArrayList<Integer>();
		
		toppings.put("toppings", toppingList);
		
		/**Map<String, Integer> toppingPriceMap = quickOrderService.getToppingPrice(toppings);
		
		for(String key : toppingPriceMap.keySet()) {
			toppingPriceList.add(toppingPriceMap.get(key));
		}
		*/
		return toppingPriceList;
	}
}
