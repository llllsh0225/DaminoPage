package com.damino.web.user.goods;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView getPizzaList(ModelAndView mav, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		if (userid == null) {

		} else {
			session.setAttribute("msg", "login");
		}
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
	public ModelAndView getSideList(ModelAndView mav, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		if (userid == null) {

		} else {
			session.setAttribute("msg", "login");
		}

		System.out.println("사이드디시 리스트 열기");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();
		
		mav.addObject("goodsSideList", goodsSideList);
		
		mav.setViewName("/goods/side_list");

		return mav;
	}

	@RequestMapping("/goodsDrinkEtcList.do")
	public ModelAndView getDrinkEtcList(ModelAndView mav, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		if (userid == null) {

		} else {
			session.setAttribute("msg", "login");
		}

		System.out.println("음료&기타 메뉴 열기");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/drink_list");

		return mav;
	}

	/** 사용자 선택 피자 메뉴 */
	@RequestMapping("/detail.do")
	public ModelAndView goView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo,
			HttpSession session) {
		System.out.println("사용자 선택 피자메뉴 열기");	
		String userid = (String) session.getAttribute("userid");
		
		if (userid == null) {

		} else {
			session.setAttribute("msg", "login");
		}
		List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
		//DB에 있는 구별자 조회
		
		if(basketList.size() != 0) {
			int gubunDB = goodsListService.getNextGubun(userid);
			System.out.println("gubunDB : " + gubunDB);
			mav.addObject("gubunDB", gubunDB);
		}
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

	/** 사용자 선택 피자 메뉴 - 장바구니 클릭 경로로 들어올 때 */
	@RequestMapping(value = "my_basket.do")
	public ModelAndView goView_basket(ModelAndView mav, HttpServletRequest request, @ModelAttribute UserBasketVO vo,
			HttpSession session) {

		// 사용자 선택 메뉴 정보 서비스 호출
		// GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);

		String userid = (String) session.getAttribute("userid");
		System.out.println(" my_basket userid : " + userid);

		// 로그인 되어 있지 않다면 비회원에서 user 정보 받아오게 리다이렉트
		if (userid == null) {
			mav.setViewName("/login/login");
			return mav;
		} else {

			session.setAttribute("msg", "login");
			vo.setUserid(userid);
			
			// userid 기준 장바구니 목록 호출
			List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
			List<UserBasketVO> toppingList = goodsListService.getBasketTopping(userid);
			List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
			List<UserBasketVO> etcList = goodsListService.getBasketEtc(userid);

			mav.addObject("basketList", basketList);
			mav.addObject("toppingList", toppingList);
			mav.addObject("sideList", sideList);
			mav.addObject("etcList", etcList);
			
			System.out.println("toppingList : " + toppingList);
			System.out.println("sideList : " + sideList);
			System.out.println("etcList : " + etcList);

			mav.setViewName("/basket/basket_detail");
			
			return mav;
		}
	}

	/** 사용자 선택 피자 메뉴 - 주문하기 경로로 들어올 때 */
	@RequestMapping(value = "my_baskets.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView goView_baskets(ModelAndView mav, HttpServletRequest request, @ModelAttribute UserBasketVO vo, HttpSession session) {

		String userid = (String) session.getAttribute("userid");
		System.out.println(" my_basket userid : " + userid);

		// 로그인 되어 있지 않다면 비회원에서 user 정보 받아오게 리다이렉트
		if (userid == null) {
			mav.setViewName("/login/login");
			return mav;
		} else {

			session.setAttribute("msg", "login");
			vo.setUserid(userid);
			// userid 기준 장바구니 목록 호출
			List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
			List<UserBasketVO> toppingList = goodsListService.getBasketTopping(userid);
			List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
			List<UserBasketVO> etcList = goodsListService.getBasketEtc(userid);

			mav.addObject("basketList", basketList);
			mav.addObject("toppingList", toppingList);
			mav.addObject("sideList", sideList);
			mav.addObject("etcList", etcList);
			
			System.out.println("toppingList : " + toppingList);
			System.out.println("sideList : " + sideList);
			System.out.println("etcList : " + etcList);
			
			mav.setViewName("/basket/basket_detail");

			return mav;
		}
	}

	@RequestMapping(value = "insert_basket.do", method = RequestMethod.POST)
	@ResponseBody
	public String go_InsertBasket(@RequestBody Map<String, Object> param, HttpServletRequest request, @ModelAttribute UserBasketVO vo, HttpSession session) {
		//String test = (String)param.get("gubunDB");
		//System.out.println("test : " + test);
		int gubunDB = (Integer)param.get("gubunDB");// DB 삽입 정보 구별을 위한 변수.  값이 증가되지 않아 증가된 값을 받아올 예정
		System.out.println("gubunDB : " + gubunDB);
		
		String gubun = (String)param.get("gubun"); //세션 정보 확인을 구한 변수

	//--------------피자---------------------------
		String userId = (String) param.get("userId");
		int p_price = (Integer) param.get("pizzaPrice");
		String p_size = (String) param.get("pizzaSize");
		String p_name = (String) param.get("pizzaName");
		String p_dough = (String) param.get("pizzaDough");
		System.out.println("p_dough : " + p_dough);
		
		String p_image = (String) param.get("pizzaImage");
		int p_count = (Integer) param.get("pizzaCount");
		
		if(!p_name.isEmpty()) {	
		// vo에 피자 관련 값 셋팅
		vo.setUserid(userId);
		vo.setP_price(p_price);
		vo.setP_size(p_size);
		vo.setP_name(p_name);
		vo.setP_dough(p_dough);
		vo.setP_count(p_count);
		vo.setP_image(p_image);
		vo.setGubun(gubunDB);
		
		goodsListService.insertPizzaBasket(vo);
	}
	//--------------토핑--------------------------------
		String t_prices = (String)param.get("toppingPrice");
		String t_names = (String)param.get("toppingName");
		String t_counts = (String)param.get("toppingCount");
		
		String t_priceArr[] = t_prices.split(",");
		String t_nameArr[] = t_names.split(",");
		String t_countArr[] = t_counts.split(",");
			
		if(!t_names.isEmpty()) {		
			
			for(int i=0; i<t_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setT_name(t_nameArr[i]);
				vo.setT_price(Integer.parseInt(t_priceArr[i]));
				//vo.setT_image(t_image);
				vo.setT_count(Integer.parseInt(t_countArr[i]));
				vo.setGubun(gubunDB);
				
				goodsListService.insertToppingBasket(vo);
			}
		}
		
	//--------------사이드---------------------------------
		String s_prices =  (String)param.get("sidePrice");		
		String s_names = (String)param.get("sideName");
		String s_counts =  (String)param.get("sideCount");
		
		String s_priceArr[] = s_prices.split(",");
		String s_nameArr[] = s_names.split(",");
		String s_countArr[] = s_counts.split(",");
		
		if(!s_names.isEmpty()) {					
			for(int i=0; i<s_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setS_name(s_nameArr[i]);
				vo.setS_price(Integer.parseInt(s_priceArr[i]));
				//vo.setT_image(t_image);
				vo.setS_count(Integer.parseInt(s_countArr[i]));
				vo.setGubun(gubunDB);
				
				goodsListService.insertSideBasket(vo);
			}
		}
		
	// ------------음료 및 기타-------------------------
		String d_prices = (String) param.get("etcPrice");
		String d_names = (String) param.get("etcName");
		String d_counts = (String) param.get("etcCount");
		System.out.println("d_names : " + d_names);
		
		
		String d_priceArr[] = d_prices.split(",");
		String d_nameArr[] = d_names.split(",");
		String d_countArr[] = d_counts.split(",");
		
		if(!d_names.isEmpty()) {	
			System.out.println("테스트2");
		for(int i=0; i<d_nameArr.length; i++) {
			vo.setUserid(userId);
			vo.setD_name(d_nameArr[i]);
			vo.setD_price(Integer.parseInt(d_priceArr[i]));
			//vo.setT_image(t_image);
			vo.setD_count(Integer.parseInt(d_countArr[i]));
			vo.setGubun(gubunDB);
			
			goodsListService.insertEtcBasket(vo);
			}
		}		
		
		if(gubun != null) {
			return "success";
		}else {
			return "noSession";
		}			
		
	}
	
	@RequestMapping(value = "/deleteTopping.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteTopping(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");
		System.out.println("userid : " + userid);
		
		int seq = (Integer)param.get("seq");
		System.out.println("seq : " + seq);
		vo.setUserid(userid);
		vo.setSeq(seq);
		
		System.out.println("del : " + userid);
		System.out.println("del seq : " + seq);

		goodsListService.deleteTopping(vo);
		return "success";
		
	}
	
	@RequestMapping(value = "/pizzaDelete.do", method = RequestMethod.POST)

	@ResponseBody
	public String pizzaDelete(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");
		String p_name = (String) param.get("goodsName");
		int seq = (Integer) param.get("seq");
		int gubun = (Integer) param.get("gubun");

		vo.setUserid(userid);
		vo.setSeq(seq);
		vo.setP_name(p_name);
		vo.setGubun(gubun);
		// vo.setToppingCount(toppingCount);

		System.out.println("del : " + userid);
		System.out.println("del pizzaName : " + p_name);
		System.out.println("del seq : " + seq);
		System.out.println("del gubun : " + gubun);
		
		goodsListService.deletePizzaInfo(vo);
		goodsListService.deletePizzasTopping(vo);
		
		return "success";
	}
	
	  
	@RequestMapping(value = "/sideDelete.do", method = RequestMethod.POST)
	@ResponseBody
	public String sideDelete(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");
		int seq = (Integer) param.get("seq");

		vo.setUserid(userid);
		vo.setSeq(seq);
		// vo.setToppingCount(toppingCount);

		System.out.println("del : " + userid);
		System.out.println("del seq : " + seq);

		goodsListService.deleteSideInfo(vo);

		return "success";
	}

	@RequestMapping(value = "/etcDelete.do", method = RequestMethod.POST)
	@ResponseBody
	public String etcDelete(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");
		int seq = (Integer) param.get("seq");

		vo.setUserid(userid);
		vo.setSeq(seq);
		// vo.setToppingCount(toppingCount);

		System.out.println("del : " + userid);
		System.out.println("del seq : " + seq);

		goodsListService.deleteEtcInfo(vo);

		return "success";
	}

	/*
	 * @RequestMapping(value = "/getToppingNames.do", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public List<GoodsToppingVO> getToppingNames(HttpServletRequest
	 * request, @RequestBody Map<String, Object> params, GoodsToppingVO vo) { String
	 * toppingName = (String) params.get("t_name");
	 * 
	 * // String[] arrayParam = request.getParameterValues("test");
	 * System.out.println(toppingName);
	 * 
	 * // GoodsToppingVO toppingVO = new GoodsToppingVO();
	 * 
	 * List<String> t_name_List = new ArrayList<String>(); String[] t_name_List2 =
	 * toppingName.split(",");
	 * 
	 * List<GoodsToppingVO> toppingList = new ArrayList<GoodsToppingVO>();
	 * 
	 * for (int i = 0; i < t_name_List2.length; i++) {
	 * vo.setT_name(t_name_List2[i]);
	 * 
	 * GoodsToppingVO topping = goodsListService.getUserTopping(vo);
	 * 
	 * toppingList.add(topping); System.out.println(vo.getT_name()); } return
	 * toppingList; }
	 */

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
