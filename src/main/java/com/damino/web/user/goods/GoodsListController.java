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
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.coupon.CouponVO;
import com.damino.web.user.order.DeliveryAddressVO;
import com.damino.web.user.order.OrderService;

@Controller
public class GoodsListController {
	@Autowired
	private GoodsListService goodsListService;
	@Autowired
	private MarketAdminRegistService marketAdminRegistService;
	@Autowired
	private CouponService couponService;
	
	@Autowired
	private OrderService orderService;
	
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

		List<PizzaVO> pizzaNutrients = goodsListService.getAllPizzaList();
		List<SideVO> sideNutrients = goodsListService.getAllSideList();
		
		mav.addObject("goodsPremiumList", goodsPremiumList);
		mav.addObject("goodsClassicList", goodsClassicList);
		mav.addObject("pizzaNutrients", pizzaNutrients);
		mav.addObject("sideNutrients", sideNutrients);
		
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

		List<PizzaVO> pizzaNutrients = goodsListService.getAllPizzaList();
		List<SideVO> sideNutrients = goodsListService.getAllSideList();
		
		mav.addObject("goodsSideList", goodsSideList);
		mav.addObject("pizzaNutrients", pizzaNutrients);
		mav.addObject("sideNutrients", sideNutrients);
		
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

		List<PizzaVO> pizzaNutrients = goodsListService.getAllPizzaList();
		List<SideVO> sideNutrients = goodsListService.getAllSideList();
		
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.addObject("pizzaNutrients", pizzaNutrients);
		mav.addObject("sideNutrients", sideNutrients);
		
		mav.setViewName("/goods/drink_list");

		return mav;
	}

	/** 사용자 선택 - 사이드디시 상세화면 */
	@RequestMapping("/side.do")
	public ModelAndView goSideView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsSideVO vo, HttpSession session) {
		System.out.println("사용자 선택 사이드디시 메뉴 열기");

		String userid = (String) session.getAttribute("userid");

		if (userid == null) {

		} else {
			session.setAttribute("msg", "login");
			
			List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
			// DB에 있는 구별자 조회
			List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
			
			if(!basketList.isEmpty()) {
				if (basketList.size() >= sideList.size()) {
					int gubunDB = goodsListService.getNextGubun(userid);
					System.out.println("gubunDB : " + gubunDB);
					mav.addObject("gubunDB", gubunDB);
				}
				
			}

			else if(!sideList.isEmpty()) {
				if(sideList.size() > basketList.size()) {
					int gubunDB = goodsListService.getNextGubunSide(userid);
					System.out.println("gubunDB : " + gubunDB);
					mav.addObject("gubunDB", gubunDB);
				}
			}
			
		}
		
		String s_code = request.getParameter("s_code");
		System.out.println("s_code : " + s_code);
		String s_name = request.getParameter("s_name");

		System.out.println("s_name : " + s_name);

		// 사용자 선택 메뉴 정보 서비스 호출
		GoodsSideVO goodsDetailSide = goodsListService.getUserSideGoods(vo);

		// 음료 목록 서비스 호출
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// 피자&사이드 영양성분
		List<PizzaVO> pizzaNutrients = goodsListService.getAllPizzaList();
		List<SideVO> sideNutrients = goodsListService.getAllSideList();
		
		// -------사용자 선택 메뉴 정보 불러오기-------------------

		// 음료 목록 불러오기
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		// 사이드디시 불러오기
		mav.addObject("goodsDetailSide", goodsDetailSide);

		mav.addObject("pizzaNutrients", pizzaNutrients);
		mav.addObject("sideNutrients", sideNutrients);
		
		mav.setViewName("/goods/detail_goods_side");

		return mav;
	}

	/** 사용자 선택 - 피자 상세화면 */
	@RequestMapping("/detail.do")
	public ModelAndView goView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo,
			HttpSession session) {
		System.out.println("사용자 선택 피자메뉴 열기");
		String userid = (String) session.getAttribute("userid");
		
		if (userid == null) {

		} else {
			session.setAttribute("msg", "login");
			
			List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
			// DB에 있는 구별자 조회
			List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
			
			if(!basketList.isEmpty()) {
				if (basketList.size() >= sideList.size()) {
					int gubunDB = goodsListService.getNextGubun(userid);
					System.out.println("gubunDB : " + gubunDB);
					mav.addObject("gubunDB", gubunDB);
				}
				
			}

			else if(!sideList.isEmpty()) {
				if(sideList.size() > basketList.size()) {
					int gubunDB = goodsListService.getNextGubunSide(userid);
					System.out.println("gubunDB : " + gubunDB);
					mav.addObject("gubunDB", gubunDB);
				}
			}
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

		// 피자&사이드 영양성분
		List<PizzaVO> pizzaNutrients = goodsListService.getAllPizzaList();
		List<SideVO> sideNutrients = goodsListService.getAllSideList();
				
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
		mav.addObject("pizzaNutrients", pizzaNutrients);
		mav.addObject("sideNutrients", sideNutrients);
		
		mav.setViewName("/goods/detail_goods");

		return mav;
	}

	/** 사용자 선택 피자 메뉴 - 장바구니 클릭 경로로 들어올 때 */
	@RequestMapping(value = "my_basket.do")
	public ModelAndView goView_basket(ModelAndView mav, HttpServletRequest request, @ModelAttribute UserBasketVO vo,
			HttpSession session) {
		
		
		String userid = (String) session.getAttribute("userid");
		System.out.println(" my_basket userid : " + userid);

		// 로그인 되어 있지 않다면 비회원에서 user 정보 받아오게 리다이렉트
		if (userid == null) {
			mav.setViewName("/login/login");
			return mav;
		} else {
			session.setAttribute("msg", "login");
			vo.setUserid(userid);
			
			//디폴트 배달지 세팅
			List<DeliveryAddressVO> deliveryAddressList = orderService.getDeliveryAddressList(userid);
			
			if(!deliveryAddressList.isEmpty()) {
				for (int i=0; i<deliveryAddressList.size(); i++) {
				DeliveryAddressVO delVO = deliveryAddressList.get(i);
					String addressDB = delVO.getAddress();
					String storenameDB = delVO.getStorename();
					String storephoneDB = delVO.getStorephone();
					mav.addObject("addressDB", addressDB);
					mav.addObject("storenameDB", storenameDB);
					mav.addObject("storephoneDB", storephoneDB);
				}
			}
			//사용자 쿠폰 정보 조회
			  List<CouponVO> couponList = couponService.getMyCouponList(userid);
			  
			  String couponName = ""; // 쿠폰명을 저장할 문자열
			  
			  for(int i=0; i<couponList.size(); i++) {
				  couponName += couponList.get(i).getCoupon_name();
				  if(i != couponList.size() - 1) {
					  couponName += ","; 
				  }
			  }
			  
			  mav.addObject("couponName", couponName);
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
	public ModelAndView goView_baskets(ModelAndView mav, HttpServletRequest request, @ModelAttribute UserBasketVO vo,
			HttpSession session) {
			
		String userid = (String) session.getAttribute("userid");
		System.out.println(" my_basket userid : " + userid);

		// 로그인 되어 있지 않다면 비회원에서 user 정보 받아오게 리다이렉트
		if (userid == null) {
			mav.setViewName("/login/login");
			return mav;
		} else {
			session.setAttribute("msg", "login");
			vo.setUserid(userid);
			
			//사용자 쿠폰 정보 조회
			  List<CouponVO> couponList = couponService.getMyCouponList(userid);
			  
			  String couponName = ""; // 쿠폰명을 저장할 문자열
			  
			  for(int i=0; i<couponList.size(); i++) {
				  couponName += couponList.get(i).getCoupon_name();
				  if(i != couponList.size() - 1) {
					  couponName += ","; 
				  }
			  }
			  
			mav.addObject("couponName", couponName);
			// userid 기준 장바구니 목록 호출
			List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
			List<UserBasketVO> toppingList = goodsListService.getBasketTopping(userid);
			List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
			List<UserBasketVO> etcList = goodsListService.getBasketEtc(userid);

			mav.addObject("basketList", basketList);
			mav.addObject("toppingList", toppingList);
			mav.addObject("sideList", sideList);
			mav.addObject("etcList", etcList);

			mav.setViewName("/basket/basket_detail");

			return mav;
		}
	}
		
	@RequestMapping(value = "insert_basket.do", method = RequestMethod.POST)
	@ResponseBody
	public String go_InsertBasket(@RequestBody Map<String, Object> param, HttpServletRequest request,
			@ModelAttribute UserBasketVO vo, HttpSession session) {
		// String test = (String)param.get("gubunDB");
		// System.out.println("test : " + test);
		int gubunDB = (Integer) param.get("gubunDB");// DB 삽입 정보 구별을 위한 변수
		System.out.println("gubunDB : " + gubunDB);

		String gubun = (String) param.get("gubun"); // 세션 정보 확인을 구한 변수

		// --------------피자---------------------------
		String userId = (String) param.get("userId");
		int p_price = (Integer) param.get("pizzaPrice");
		String p_size = (String) param.get("pizzaSize");
		String p_name = (String) param.get("pizzaName");
		String p_dough = (String) param.get("pizzaDough");
		System.out.println("p_dough : " + p_dough);

		String p_image = (String) param.get("pizzaImage");
		int p_count = (Integer) param.get("pizzaCount");

		if (!p_name.isEmpty()) {
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
		// --------------토핑--------------------------------
		String t_prices = (String) param.get("toppingPrice");
		String t_names = (String) param.get("toppingName");
		String t_counts = (String) param.get("toppingCount");

		String t_priceArr[] = t_prices.split(",");
		String t_nameArr[] = t_names.split(",");
		String t_countArr[] = t_counts.split(",");

		if (!t_names.isEmpty()) {

			for (int i = 0; i < t_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setT_name(t_nameArr[i]);
				vo.setT_price(Integer.parseInt(t_priceArr[i]));
				// vo.setT_image(t_image);
				vo.setT_count(Integer.parseInt(t_countArr[i]));
				vo.setGubun(gubunDB);

				goodsListService.insertToppingBasket(vo);
			}
		}

		// --------------사이드---------------------------------
		String s_prices = (String) param.get("sidePrice");
		String s_names = (String) param.get("sideName");
		String s_counts = (String) param.get("sideCount");

		String s_priceArr[] = s_prices.split(",");
		String s_nameArr[] = s_names.split(",");
		String s_countArr[] = s_counts.split(",");

		if (!s_names.isEmpty()) {
			for (int i = 0; i < s_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setS_name(s_nameArr[i]);
				vo.setS_price(Integer.parseInt(s_priceArr[i]));
				// vo.setT_image(t_image);
				vo.setS_count(Integer.parseInt(s_countArr[i]));
				vo.setGubun(gubunDB);

				goodsListService.insertSideBasket(vo);
			}
		}

		// ------------음료 및 기타-------------------------
		String d_prices = (String) param.get("etcPrice");
		String d_names = (String) param.get("etcName");
		String d_counts = (String) param.get("etcCount");

		String d_priceArr[] = d_prices.split(",");
		String d_nameArr[] = d_names.split(",");
		String d_countArr[] = d_counts.split(",");

		if (!d_names.isEmpty()) {
			for (int i = 0; i < d_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setD_name(d_nameArr[i]);
				vo.setD_price(Integer.parseInt(d_priceArr[i]));
				// vo.setT_image(t_image);
				vo.setD_count(Integer.parseInt(d_countArr[i]));
				vo.setGubun(gubunDB);

				goodsListService.insertEtcBasket(vo);
			}
		}

		if (gubun != null) {
			return "success";
		} else {
			return "noSession";
		}

	}
	@RequestMapping(value = "side_insert_basket.do", method = RequestMethod.POST)
	@ResponseBody
	public String side_InsertBasket(@RequestBody Map<String, Object> param, HttpServletRequest request,
			@ModelAttribute UserBasketVO vo, HttpSession session) {
		// String test = (String)param.get("gubunDB");
		// System.out.println("test : " + test);
		int gubunDB = (Integer) param.get("gubunDB");// DB 삽입 정보 구별을 위한 변수
		System.out.println("gubunDB : " + gubunDB);

		String gubun = (String) param.get("gubun"); // 세션 정보 확인을 구한 변수

		String userId = (String) param.get("userId");

		// --------------사이드---------------------------------
		String s_prices = (String) param.get("sidePrice");
		String s_names = (String) param.get("sideName");
		String s_counts = (String) param.get("sideCount");

		String s_priceArr[] = s_prices.split(",");
		String s_nameArr[] = s_names.split(",");
		String s_countArr[] = s_counts.split(",");

		if (!s_names.isEmpty()) {
			for (int i = 0; i < s_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setS_name(s_nameArr[i]);
				vo.setS_price(Integer.parseInt(s_priceArr[i]));
				// vo.setT_image(t_image);
				vo.setS_count(Integer.parseInt(s_countArr[i]));
				vo.setGubun(gubunDB);

				goodsListService.insertSideBasket(vo);
			}
		}

		// ------------음료 및 기타-------------------------
		String d_prices = (String) param.get("etcPrice");
		String d_names = (String) param.get("etcName");
		String d_counts = (String) param.get("etcCount");

		String d_priceArr[] = d_prices.split(",");
		String d_nameArr[] = d_names.split(",");
		String d_countArr[] = d_counts.split(",");

		if (!d_names.isEmpty()) {
			for (int i = 0; i < d_nameArr.length; i++) {
				vo.setUserid(userId);
				vo.setD_name(d_nameArr[i]);
				vo.setD_price(Integer.parseInt(d_priceArr[i]));
				// vo.setT_image(t_image);
				vo.setD_count(Integer.parseInt(d_countArr[i]));
				vo.setGubun(gubunDB);

				goodsListService.insertEtcBasket(vo);
			}
		}

		if (gubun != null) {
			return "success";
		} else {
			return "noSession";
		}

	}

	// 장바구니 - 피자 수량 변경
	@RequestMapping(value = "/changePizzaCnt.do", method = RequestMethod.POST)
	@ResponseBody
	public String changePizzaCnt(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		int seq = (Integer) param.get("seq");
		// 변경된 수량
		int changeCnt = (Integer) param.get("changeCnt");
		System.out.println("changeCnt : " + changeCnt);

		vo.setUserid(userid);
		vo.setSeq(seq);
		vo.setP_count(changeCnt);

		System.out.println("update : " + userid);
		System.out.println("update seq : " + seq);

		goodsListService.changePizzaCnt(vo);

		return "success";

	}

	// 장바구니 - 피자 수량 초기화
	@RequestMapping(value = "/defaultPizzaCnt.do", method = RequestMethod.POST)
	@ResponseBody
	public String defaultPizzaCnt(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		// int seq = (Integer) param.get("seq");
		// 변경된 수량
		int changeCnt = (Integer) param.get("changeCnt");
		System.out.println("changeCnt : " + changeCnt);

		vo.setUserid(userid);
		// vo.setSeq(seq);
		vo.setP_count(changeCnt);

		System.out.println("update : " + userid);
		// System.out.println("update seq : " + seq);

		goodsListService.defaultPizzaCnt(vo);

		return "success";

	}

	// 장바구니 - 사이드디시 수량 변경
	@RequestMapping(value = "/changeSideCnt.do", method = RequestMethod.POST)
	@ResponseBody
	public String changeSideCnt(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		int seq = (Integer) param.get("seq");
		// 변경된 수량
		int changeCnt = (Integer) param.get("changeCnt");
		System.out.println("changeCnt : " + changeCnt);

		vo.setUserid(userid);
		vo.setSeq(seq);
		vo.setS_count(changeCnt);

		System.out.println("update : " + userid);
		System.out.println("update seq : " + seq);

		goodsListService.changeSideCnt(vo);

		return "success";

	}

	// 장바구니 - 사이드디시 수량 초기화
	@RequestMapping(value = "/defaultSideCnt.do", method = RequestMethod.POST)
	@ResponseBody
	public String defaultSideCnt(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		// int seq = (Integer) param.get("seq");
		// 변경된 수량
		int changeCnt = (Integer) param.get("changeCnt");
		System.out.println("changeCnt : " + changeCnt);

		vo.setUserid(userid);
		// vo.setSeq(seq);
		vo.setS_count(changeCnt);

		System.out.println("update : " + userid);
		// System.out.println("update seq : " + seq);

		goodsListService.defaultSideCnt(vo);

		return "success";

	}

	// 장바구니 - 음료및기타 수량 변경
	@RequestMapping(value = "/changeEtcCnt.do", method = RequestMethod.POST)
	@ResponseBody
	public String changeEtcCnt(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		int seq = (Integer) param.get("seq");
		// 변경된 수량
		int changeCnt = (Integer) param.get("changeCnt");
		System.out.println("changeCnt : " + changeCnt);

		vo.setUserid(userid);
		vo.setSeq(seq);
		vo.setD_count(changeCnt);

		System.out.println("update : " + userid);
		System.out.println("update seq : " + seq);

		goodsListService.changeEtcCnt(vo);

		return "success";

	}

	// 장바구니 - 음료및기타 수량 초기화
	@RequestMapping(value = "/defaultEtcCnt.do", method = RequestMethod.POST)
	@ResponseBody
	public String defaultEtcCnt(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		// int seq = (Integer) param.get("seq");
		// 변경된 수량
		int changeCnt = (Integer) param.get("changeCnt");
		System.out.println("changeCnt : " + changeCnt);

		vo.setUserid(userid);
		// vo.setSeq(seq);
		vo.setD_count(changeCnt);

		System.out.println("update : " + userid);
		// System.out.println("update seq : " + seq);

		goodsListService.defaultEtcCnt(vo);

		return "success";

	}

	// 장바구니 - 전체 삭제
	@RequestMapping(value = "/allDelete.do", method = RequestMethod.POST)
	@ResponseBody
	public String allDelete(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");

		vo.setUserid(userid);

		System.out.println("del : " + userid);

		// 피자 전체 삭제
		goodsListService.allDeleteP(vo);
		// 토핑 전체 삭제
		goodsListService.allDeleteT(vo);
		// 사이드디시 전체 삭제
		goodsListService.allDeleteS(vo);
		// 음료및기타 전체 삭제
		goodsListService.allDeleteE(vo);

		return "success";
	}

	// 토핑 삭제
	@RequestMapping(value = "/deleteTopping.do", method = RequestMethod.POST)
	@ResponseBody
	public String deleteTopping(@RequestBody Map<String, Object> param, UserBasketVO vo) {
		String userid = (String) param.get("userid");
		System.out.println("userid : " + userid);

		int seq = (Integer) param.get("seq");
		System.out.println("seq : " + seq);
		vo.setUserid(userid);
		vo.setSeq(seq);

		System.out.println("del : " + userid);
		System.out.println("del seq : " + seq);

		goodsListService.deleteTopping(vo);
		return "success";

	}

	// 피자 삭제
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

	// 사이드디시 삭제
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

	// 음료및기타 삭제
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

}
