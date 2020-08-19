package com.damino.web.user.goods;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.admin.market.member.regist.MarketAdminRegistService;

@Controller
public class GoodsListController {
	@Autowired
	private GoodsListService goodsListService;
	@Autowired
	private MarketAdminRegistService marketAdminRegistService;

	// 상세주소 입력 페이지로 보낼 매장명 리스트 객체
	private List<MarketAdminMemberVO> storeNameList = new ArrayList<MarketAdminMemberVO>();

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

	@RequestMapping(value = "/goodsSideList.do")
	public ModelAndView getSideList(ModelAndView mav) {
		System.out.println("사이드디시 리스트 열기");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		mav.addObject("goodsSideList", goodsSideList);
		mav.setViewName("/goods/side_list");

		return mav;
	}

	@RequestMapping("/goodsDrinkEtcList.do")
	public ModelAndView getDrinkEtcList(ModelAndView mav) {
		System.out.println("음료&기타 메뉴 열기");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/drink_list");

		return mav;
	}

	/** 사용자 선택 피자 메뉴 */
	@RequestMapping("/detail.do")
	public ModelAndView goView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo, HttpSession session) {
		System.out.println("사용자 선택 피자메뉴 열기");
		
		String userid = (String) session.getAttribute("userid");
		
		String p_code = request.getParameter("p_code");
		System.out.println("p_code : " + p_code);
		String p_name = request.getParameter("p_name");

		// 사용자 선택 메뉴 정보 서비스 호출
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);

		// 토핑 목록 서비스 호출
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();

		// 사이드디시 목록 서비스 호출
		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		// 음료 목록 서비스 호출
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// -------사용자 선택 메뉴 정보 불러오기-------------------
		// 토핑 타입별 목록 불러오기
		mav.addObject("mainToppingList", mainToppingList);
		mav.addObject("cheezeToppingList", cheezeToppingList);
		mav.addObject("afterToppingList", afterToppingList);

		// 사이드디시 목록 불러오기
		mav.addObject("goodsSideList", goodsSideList);

		// 음료 목록 불러오기
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);

		// 피자 불러오기
		mav.addObject("goodsDetail", goodsDetail);

		// request parameter에서 받은 피자 이름
		mav.addObject("p_name", p_name);
		mav.setViewName("/goods/detail_goods");

		return mav;
	}

	/** 사용자 선택 피자 메뉴 - 주문하기 getToppingNames  */
	@RequestMapping(value = "my_basket.do", method = RequestMethod.POST)
	public ModelAndView goView_basket(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo, HttpSession session) {
		
		String p_code = request.getParameter("p_code");
		String p_name = request.getParameter("p_name");
		System.out.println("p_code1 : " + p_code);
		System.out.println("p_name1 : " + p_name);
		// 사용자 선택 메뉴 정보 서비스 호출
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);
		
		String userid = (String) session.getAttribute("userid");
		System.out.println("userid : " + userid);
		
		//로그인 되어 있지 않다면 비회원에서 user 정보 받아오게 리다이렉트
		if(userid == null) {
			mav.setViewName("/login/login");
			return mav;
		}else {		
		//선택한 제품정보 insert	
						
		mav.addObject("goodsDetail", goodsDetail);
		
		mav.setViewName("/basket/basket_detail");
		return mav;
		}
	}
	@RequestMapping(value = "insert_my_basket.do", method = RequestMethod.POST)
	public String go_InsertBasket(@RequestBody Map<String, Object> param, HttpServletRequest request, @ModelAttribute UserBasketVO vo, HttpSession session) {
		
		String userId = (String) param.get("userId");
		int pizzaPrice = (Integer)param.get("pizzaPrice");
		String pizzaSize = (String) param.get("pizzaSize");
		String pizzaName = (String) param.get("pizzaName");
		String pizzaDough = (String) param.get("pizzaDough");
		
		int pizzaCount = (Integer)param.get("pizzaCount");
		System.out.println("피자수량 테스트1 : " + pizzaCount);
		
		String toppingPrice =  (String)param.get("toppingPrice");
		
		String toppingName = (String)param.get("toppingName");
		String toppingCount =  (String)param.get("toppingCount");
		
		vo.setUserId(userId);
		vo.setPizzaPrice(pizzaPrice);
		vo.setPizzaSize(pizzaSize);	
		vo.setPizzaName(pizzaName);
		vo.setPizzaDough(pizzaDough);
		vo.setPizzaCount(pizzaCount);
		vo.setToppingPrice(toppingPrice);
		vo.setToppingName(toppingName);
		vo.setToppingCount(toppingCount);
		
		
		goodsListService.insertBasket(vo);
		
		
		
		return "success";
		
	}
	
	
	@RequestMapping(value="/getToppingNames.do", method=RequestMethod.POST)
	@ResponseBody
	public List<GoodsToppingVO> getToppingNames(HttpServletRequest request, @RequestBody Map<String, Object> params, GoodsToppingVO vo){
		String toppingName = (String)params.get("t_name");
				
		//String[] arrayParam = request.getParameterValues("test");
		System.out.println(toppingName);
		
		//GoodsToppingVO toppingVO = new GoodsToppingVO();
		
		List<String> t_name_List = new ArrayList<String>();		
		String[] t_name_List2 = toppingName.split(",");
		
		List<GoodsToppingVO> toppingList = new ArrayList<GoodsToppingVO>();
		
			for(int i=0; i<t_name_List2.length; i++) {
			vo.setT_name(t_name_List2[i]);
			
			GoodsToppingVO topping = goodsListService.getUserTopping(vo);
			
			toppingList.add(topping);
			System.out.println(vo.getT_name());
			}		
		return toppingList;
	}
	@RequestMapping(value="/getPizzaName.do", method=RequestMethod.POST)
	@ResponseBody
	public String getPizzaName(HttpServletRequest request, @RequestBody Map<String, Object> params, GoodsPizzaVO vo, Model model){
		String p_name = (String)params.get("p_name");
				
		//String[] arrayParam = request.getParameterValues("test");
		System.out.println(p_name);
		
		//GoodsToppingVO toppingVO = new GoodsToppingVO();
		
		//	List<GoodsToppingVO> toppingList = new ArrayList<GoodsToppingVO>();
		vo.setP_name(p_name);
		//GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);
		GoodsPizzaVO goodsDetail1 = goodsListService.getUserPizza(vo);
		/*
		 * for(int i=0; i<t_name_List2.length; i++) { vo.setT_name(t_name_List2[i]);
		 * 
		 * GoodsToppingVO topping = goodsListService.getUserTopping(vo);
		 * 
		 * toppingList.add(topping); System.out.println(vo.getT_name()); }
		 */	
		//String pizzaImage = goodsDetail1.getP_image();
	//	model.addAttribute(pizzaImage);
		//return goodsDetail1;
		return "success";
		
	}	

	@RequestMapping(value = "/getStoreRegion.do", method = RequestMethod.POST)
	@ResponseBody
	public String getStoreRegion(@RequestBody Map<String, Object> param) {
		String guName = (String) param.get("guName");
		System.out.println("구 : " + guName);

		storeNameList = marketAdminRegistService.searchStore(guName);
		System.out.println(storeNameList);

		if (storeNameList.size() != 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping("/openDetailAddress.do")
	public ModelAndView openDetailAddress(ModelAndView mav) {
		mav.addObject("storeNameList", storeNameList);
		mav.setViewName("/basket/detailAddr");
		return mav;
	}

	@RequestMapping("/side.do")
	public ModelAndView goSideView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsSideVO vo) {
		System.out.println("사용자 선택 사이드디시 메뉴 열기");

		String s_code = request.getParameter("s_code");
		System.out.println("s_code : " + s_code);
		String s_name = request.getParameter("s_name");

		System.out.println("s_name : " + s_name);

		// 사용자 선택 메뉴 정보 서비스 호출
		GoodsSideVO goodsDetailSide = goodsListService.getUserSideGoods(vo);

		// 음료 목록 서비스 호출
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// -------사용자 선택 메뉴 정보 불러오기-------------------

		// 음료 목록 불러오기
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		// 사이드디시 불러오기
		mav.addObject("goodsDetailSide", goodsDetailSide);

		mav.setViewName("/goods/detail_goods_side");

		return mav;
	}

}
