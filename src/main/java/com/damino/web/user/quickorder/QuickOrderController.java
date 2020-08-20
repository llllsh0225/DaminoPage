package com.damino.web.user.quickorder;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.admin.market.member.regist.MarketAdminRegistService;
import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.coupon.CouponVO;
import com.damino.web.user.goods.GoodsListService;
import com.damino.web.user.goods.GoodsToppingVO;

@Controller
public class QuickOrderController {
	@Autowired
	private QuickOrderService quickOrderService;
	@Autowired
	private GoodsListService goodsListService;
	@Autowired
	private MarketAdminRegistService marketAdminRegistService;
	@Autowired
	private CouponService couponService;
	
	// 상세주소 입력 페이지로 보낼 매장명 리스트 객체
	private List<MarketAdminMemberVO> storeNameList = new ArrayList<MarketAdminMemberVO>();
	
	@RequestMapping("/quickOrder.do")
	public ModelAndView getQuickOrderPage(ModelAndView mav, HttpSession session) {
		System.out.println("퀵오더페이지 열기");
		
		String userid = (String) session.getAttribute("userid"); // 세션에 저장된 userid
		
		if(userid != null) {
			// 유저의 저장된 퀵오더 정보 리스트 가져오기
			List<QuickOrderGoodsVO> quickOrderGoodsList = quickOrderService.getQuickOrderGoodsList(userid);	
			QuickOrderAddressVO defaultAddress = quickOrderService.getDefaultDeliveryAddress(userid);
			int totalPrice = 0; // 저장된 제품의 총 가격
			
			for(int i=0; i<quickOrderGoodsList.size(); i++) {
				totalPrice += quickOrderGoodsList.get(i).getQuick_price();
				System.out.println("총 가격 : " + totalPrice);
			}
			
			mav.addObject("totalPrice", totalPrice);
			mav.addObject("quickOrderGoodsList", quickOrderGoodsList);
			mav.addObject("defaultAddress", defaultAddress);
		}
		
		mav.setViewName("/quickorder/quickOrder");
		
		return mav;
	}
	
	@RequestMapping("/quickOrderSetting.do")
	public ModelAndView quickOrderSetting(ModelAndView mav, HttpSession session) {
		System.out.println("퀵오더 설정페이지 열기");
		
		String userid = (String) session.getAttribute("userid"); // 세션에 저장된 userid
		
		// 유저의 퀵오더 정보 리스트 가져오기
		List<QuickOrderGoodsVO> quickOrderGoodsList = quickOrderService.getQuickOrderGoodsList(userid);
		List<QuickOrderAddressVO> quickOrderAddressList = quickOrderService.getQuickOrderAddressList(userid);
		
		if(quickOrderGoodsList.size() != 0) { // 퀵오더 메뉴 리스트가 null이 아닐 때 다음 rowseq값을 가져옴
			int goodsNextRowSeq = quickOrderService.getGoodsNexRowSeq(userid);
			mav.addObject("goodsNextRowSeq", goodsNextRowSeq);
			System.out.println("제품 테이블 다음 rowseq : " + goodsNextRowSeq);
		}
		
		if(quickOrderAddressList.size() != 0) { // 퀵오더 주소 리스트가 null이 아닐 때 다음 rowseq값과 디폴트 배송지 정보를 가져옴
			int addressNextRowSeq = quickOrderService.getAddressNexRowSeq(userid);
			QuickOrderAddressVO defaultAddress = quickOrderService.getDefaultDeliveryAddress(userid);
			
			System.out.println(defaultAddress.getAddress());
			mav.addObject("defaultAddress", defaultAddress);
			mav.addObject("addressNextRowSeq", addressNextRowSeq);
		}
		
		// 저장된 토핑리스트 가져오기
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();
		
		mav.addObject("quickOrderGoodsList", quickOrderGoodsList);
		mav.addObject("quickOrderAddressList", quickOrderAddressList);
		
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
				int pizzaMPrice = quickOrderService.getPizzaMPrice(goodsName);
				int doughPrice = quickOrderService.getDoughPrice(dough);
				goodsPrice.add(pizzaMPrice);
				goodsPrice.add(doughPrice);
			}
			break;
		case "SIDE" :
			System.out.println("사이드메뉴 가격 받아오기");
			int sidePrice = quickOrderService.getSidePrice(goodsName);
			goodsPrice.add(sidePrice);
			break;
		case "DRINK" :
			System.out.println("음료 가격 받아오기");
			int drinkEtcPrice = quickOrderService.getDrinkEtcPrice(goodsName);
			goodsPrice.add(drinkEtcPrice);
			break;
		}
		return goodsPrice;
	}
	
	@RequestMapping("/openDetailAddr.do")
	public ModelAndView openDetailAddr(ModelAndView mav) {
		mav.addObject("storeNameList", storeNameList);
		mav.setViewName("quickorder/detailAddr");
		return mav;
	}
	
	@RequestMapping(value="/getGuStore.do", method=RequestMethod.POST)
	@ResponseBody
	public String getGuStore(@RequestBody Map<String, Object> param) {
		String guName = (String)param.get("guName");
		System.out.println("구 : " + guName);
		
		storeNameList = marketAdminRegistService.searchStore(guName);
		System.out.println(storeNameList);
		
		if(storeNameList.size() != 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping(value="/insertQuickOrderGoods.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertQuickOrderGoods(@RequestBody Map<String, Object> param, QuickOrderGoodsVO vo) {
		String userid = (String) param.get("userid");
		String quick_goods = (String) param.get("quick_goods");
		String quick_qty = (String)param.get("quick_qty");
		String quick_price = (String)param.get("quick_price");
		int rowseq = (Integer)param.get("rowseq");
		
		vo.setQuick_goods(quick_goods);
		vo.setQuick_qty(Integer.parseInt(quick_qty));
		vo.setQuick_price(Integer.parseInt(quick_price));
		vo.setRowseq(rowseq);
		vo.setUserid(userid);
		
		quickOrderService.insertQuickOrderGoods(vo);
		
		return "success";
	}
	
	@RequestMapping(value="/deleteQuickOrderGoods.do", method=RequestMethod.POST)
	@ResponseBody
	public String deleteQuickOrderGoods(@RequestBody Map<String, Object> param, QuickOrderGoodsVO vo) {
		String userid = (String) param.get("userid");
		int rowseq = (Integer)param.get("rowseq");
		
		vo.setUserid(userid);
		vo.setRowseq(rowseq);
		
		System.out.println(vo.getUserid());
		System.out.println(vo.getRowseq());
		
		quickOrderService.deleteQuickOrderGoods(vo);
		
		return "success";
	}
	
	@RequestMapping(value="/insertQuickOrderAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertQuickOrderAddress(@RequestBody Map<String, Object> param, QuickOrderAddressVO vo) {
		String userid = (String) param.get("userid");
		String address = (String) param.get("address");
		String storeName = (String) param.get("storeName");
		int rowseq = (Integer) param.get("rowseq");
		
		// 해당 매장의 전화번호를 받아온다.
		String storephone = quickOrderService.getStorePhone(storeName);
		System.out.println("매장 전화 : " + storephone);
		
		// 퀵오더 주소 테이블에 들어갈 vo 정보를 세팅
		vo.setAddress(address);
		vo.setStorename(storeName);
		vo.setStorephone(storephone);
		vo.setRowseq(rowseq);
		vo.setUserid(userid);
		
		quickOrderService.insertQuickOrderAddress(vo);
		
		return "success";
	}
	
	@RequestMapping(value="/deleteQuickOrderAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String deleteQuickOrderAddress(@RequestBody Map<String, Object> param, QuickOrderAddressVO vo) {
		String userid = (String) param.get("userid");
		int rowseq = (Integer) param.get("rowseq");
		
		// 퀵오더 주소 테이블에서 삭제할 vo 정보를 세팅
		vo.setUserid(userid);
		vo.setRowseq(rowseq);
		
		quickOrderService.deleteQuickOrderAddress(vo);
		
		return "success";
	}
	
	@RequestMapping(value="/setDefaultDeliveryAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String setDefaultDeliveryAddress(@RequestBody Map<String, Object> param, QuickOrderAddressVO vo) {
		String userid = (String) param.get("userid");
		int rowseq = (Integer) param.get("rowseq");
		
		// 퀵오더 주소 테이블에서 디폴트 주소지를 설정할 vo정보를 세팅
		vo.setUserid(userid);
		vo.setRowseq(rowseq);
		
		quickOrderService.setDefaultDeliveryAddress(vo); // 해당 주소지를 디폴트 배달주소로 설정
		quickOrderService.releaseDefaultDeliveryAddress(vo); // 이전 설정되었던 디폴트 배달주소를 해제
		
		return "success";
	}
	
	@RequestMapping("/getQuickOrderPaymentPage.do")
	public ModelAndView getQuickOrderPaymentPage(ModelAndView mav, HttpSession session) {
		System.out.println("퀵오더 결제하기 페이지 열기");
		
		String userid = (String)session.getAttribute("userid");
		
		List<QuickOrderGoodsVO> quickOrderGoodsList = quickOrderService.getQuickOrderGoodsList(userid);	
		QuickOrderAddressVO defaultAddress = quickOrderService.getDefaultDeliveryAddress(userid);
		List<CouponVO> couponList = couponService.getMyCouponList(userid); // 사용가능 쿠폰 리스트 불러오기
		MarketVO hourInfo = quickOrderService.getBusinessHour(defaultAddress.getStorename()); // 배달매장의 영업시간 정보 가져오기
		
		String goodsName = ""; // 저장된 제품명을 담을 문자열
		String goodsPrice = ""; // 저장된 제품가격을 담을 문자열
		String goodsQty = ""; // 저장된 제품수량을 담을 문자열
		int totalPrice = 0; // 저장된 제품의 총 가격
		String couponName = ""; // 쿠폰명을 저장할 문자열
		String couponCode = ""; // 쿠폰코드를 저장할 문자열
		String discountRate = ""; // 쿠폰별 할인율을 저장할 문자열
		
		for(int i=0; i<quickOrderGoodsList.size(); i++) {
			goodsName += quickOrderGoodsList.get(i).getQuick_goods();
			
			goodsPrice += String.valueOf(quickOrderGoodsList.get(i).getQuick_price());
			
			goodsQty += String.valueOf(quickOrderGoodsList.get(i).getQuick_qty());
			
			totalPrice += quickOrderGoodsList.get(i).getQuick_price();
			
			if(i != quickOrderGoodsList.size() - 1) {
				goodsName += ",";
				goodsPrice += ",";
				goodsQty += ",";
			}
		}
		
		for(int i=0; i<couponList.size(); i++) {
			couponName += couponList.get(i).getCoupon_name();
			couponCode += couponList.get(i).getCoupon_code();
			discountRate += couponList.get(i).getDiscountrate();
			if(i != couponList.size() - 1) {
				couponName += ",";
				couponCode += ",";
				discountRate += ",";
			}
		}
		
		mav.addObject("hourInfo", hourInfo);
		mav.addObject("goodsName", goodsName);
		mav.addObject("goodsPrice", goodsPrice);
		mav.addObject("goodsQty", goodsQty);
		mav.addObject("totalPrice", totalPrice);
		mav.addObject("quickOrderGoodsList", quickOrderGoodsList);
		mav.addObject("defaultAddress", defaultAddress);
		mav.addObject("couponName", couponName);
		mav.addObject("couponCode", couponCode);
		mav.addObject("discountRate", discountRate);
		
		mav.setViewName("/quickorder/quickOrder_payment");
		
		return mav;
	}
	
	@RequestMapping(value="/doQuickOrder.do", method=RequestMethod.POST)
	@ResponseBody
	public String doQuickOrder(@RequestBody Map<String, Object> param, QuickOrderVO vo) {
		String userid = (String) param.get("userid");
		String username = (String) param.get("username");
		String orderdate = (String) param.get("orderTimeStr");
		String deliverytime = (String) param.get("deliveryTime");
		String address = (String) param.get("deliverAddress");
		String tel = (String) param.get("userphone");
		String menus = (String) param.get("goodsName");
		int price = (Integer) param.get("totalPayment");
		String take = (String) param.get("take");
		String store = (String) param.get("storename");
		String paytool = (String) param.get("paytool");
		String paystatus = (String) param.get("paystatus");
		String status = (String) param.get("status");
		String requirement = (String) param.get("requirement");
		String couponCode = (String) param.get("selectCouponCode");
		
		vo.setUserid(userid);
		vo.setUsername(username);
		vo.setOrderdate(orderdate);
		vo.setDeliverytime(deliverytime);
		vo.setOrderdate(orderdate);
		vo.setAddress(address);
		vo.setTel(tel);
		vo.setMenus(menus);
		vo.setPrice(price);
		vo.setTake(take);
		vo.setStore(store);
		vo.setPaytool(paytool);
		vo.setPaystatus(paystatus);
		vo.setStatus(status);
		vo.setRequirements(requirement);
		
		quickOrderService.doQuickOrder(vo);
		
		if(couponCode != null) {
			couponService.updateUsedCoupon(couponCode);
		}
		
		return "success";
	}
	
	@RequestMapping("/getOrderResultPage.do")
	public ModelAndView getOrderResultPage(ModelAndView mav) {
		System.out.println("주문 결과 페이지 열기");
		
		mav.setViewName("quickorder/quickOrder_done");
		
		return mav;
	}
}
