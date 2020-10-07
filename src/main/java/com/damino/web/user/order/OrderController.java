package com.damino.web.user.order;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.homepage.market.MarketVO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.user.board.paging.Paging;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.coupon.CouponVO;
import com.damino.web.user.goods.GoodsListService;
import com.damino.web.user.goods.UserBasketVO;
import com.damino.web.user.goods.UserOrderVO;
import com.damino.web.user.quickorder.QuickOrderService;

@Controller
@SessionAttributes({"address","storename", "storephone"})
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private CouponService couponService;
	@Autowired
	private QuickOrderService quickOrderService;
	@Autowired
	private GoodsListService goodsListService;
	
	private List<MarketAdminMemberVO> storeNameList = new ArrayList<MarketAdminMemberVO>();
	
	@RequestMapping("/orderorderDone.do")
	public ModelAndView getOrderOrderDone() {
		System.out.println("결제완료 페이지");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/order/order_orderDone");
		return mav;
	}
	
	@RequestMapping("/getOrderPage.do")
	public ModelAndView getOrderPage(ModelAndView mav, HttpSession session) {
		System.out.println("배달/포장주문 페이지 열기");
		
		String userid = (String) session.getAttribute("userid");
		
		List<DeliveryAddressVO> deliveryAddressList = orderService.getDeliveryAddressList(userid);
		List<StoreAddressVO> storeAddressList = orderService.getStoreAddressList(userid);
		
		mav.addObject("deliveryAddressList", deliveryAddressList);
		mav.addObject("storeAddressList", storeAddressList);
		mav.setViewName("order/orderGubun");
		
		return mav;
	}
	
	@RequestMapping("/orderPage.do")
	public ModelAndView orderPage(Paging pa, ModelAndView mav, HttpSession session, HttpServletRequest request) {
		System.out.println("결제하기 페이지 열기");
		//세션 만료 시간 연장
		//request.getSession().setMaxInactiveInterval(300000);
		String userid = (String) session.getAttribute("userid");
		pa.setWriterId(userid);
		//mav.addObject("storename", vo.getStoreName());

		List<DeliveryAddressVO> deliveryAddressList = orderService.getDeliveryAddressList(userid);
		List<StoreAddressVO> storeAddressList = orderService.getStoreAddressList(userid);
		List<CouponVO> couponList = couponService.getMyCouponList(pa); // 사용가능 쿠폰 리스트 불러오기
		
		String storeName = (String) session.getAttribute("storename");
		
		if(storeName != null) {
			MarketVO hourInfo = quickOrderService.getBusinessHour(storeName); // 배달매장의
			mav.addObject("hourInfo", hourInfo);
		}else { //세션의 매장이 없는 경우 DB에서 조회
			for (int i=0; i<deliveryAddressList.size(); i++) {
				DeliveryAddressVO vo = deliveryAddressList.get(i);
				
				MarketVO hourInfo = quickOrderService.getBusinessHour(vo.getStorename());
				mav.addObject("hourInfo", hourInfo);
			}
		}
		//디폴트 배달지 세팅
		if(!deliveryAddressList.isEmpty()) {
			for (int i=0; i<deliveryAddressList.size(); i++) {
			DeliveryAddressVO delVO2 = deliveryAddressList.get(i);
				String addressDB = delVO2.getAddress();
				String storenameDB = delVO2.getStorename();
				String storephoneDB = delVO2.getStorephone();
				mav.addObject("addressDB", addressDB);
				mav.addObject("storenameDB", storenameDB);
				mav.addObject("storephoneDB", storephoneDB);
			}
		}
		
		String couponName = ""; // 쿠폰명을 저장할 문자열
		String couponCode = ""; // 쿠폰코드를 저장할 문자열
		String discountRate = ""; // 쿠폰별 할인율을 저장할 문자열
		
		for(int i=0; i<couponList.size(); i++) {
			couponName += couponList.get(i).getCoupon_name();
			couponCode += couponList.get(i).getCoupon_code();
			discountRate += couponList.get(i).getDiscountrate();
			if(i != couponList.size() - 1) {
				couponName += ",";
				couponCode += ",";
				discountRate += ",";
			}
			System.out.println("couponName : " + couponName);
		}
		mav.addObject("deliveryAddressList", deliveryAddressList);
		mav.addObject("storeAddressList", storeAddressList);
		mav.addObject("couponList", couponList);
		mav.addObject("couponName", couponName);
		mav.addObject("couponCode", couponCode);
		mav.addObject("discountRate", discountRate);
		
		// userid 기준 장바구니 목록 호출
		List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
		List<UserBasketVO> toppingList = goodsListService.getBasketTopping(userid);
		List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
		List<UserBasketVO> etcList = goodsListService.getBasketEtc(userid);

		int totalPrice = 0; // 저장된 제품의 총 가격
		
		if (!basketList.isEmpty()) {
			for(int i=0; i<basketList.size(); i++) {
				totalPrice += basketList.get(i).getP_price()*basketList.get(i).getP_count();
			}
		}
		if (!toppingList.isEmpty()) {
			for(int i=0; i<toppingList.size(); i++) {
				totalPrice += toppingList.get(i).getT_price()*toppingList.get(i).getT_count();
			}
		}
		if (!sideList.isEmpty()) {
			for(int i=0; i<sideList.size(); i++) {
				totalPrice += sideList.get(i).getS_price()*sideList.get(i).getS_count();
			}
		}
		if (!etcList.isEmpty()) {
			for(int i=0; i<etcList.size(); i++) {
				totalPrice += etcList.get(i).getD_price()*etcList.get(i).getD_count();
			}
		}
		mav.addObject("totalPrice", totalPrice);
		mav.addObject("basketList", basketList);
		mav.addObject("toppingList", toppingList);
		mav.addObject("sideList", sideList);
		mav.addObject("etcList", etcList);
		
		mav.setViewName("/order/order_page");
		return mav;
	}
	
	@RequestMapping(value="/doOrder.do", method=RequestMethod.POST)
	@ResponseBody
	public String doOrder(@RequestBody Map<String, Object> param, UserOrderVO vo) {
		String userid = (String) param.get("userid");
		String username = (String) param.get("username");
		String orderdate = (String) param.get("orderTimeStr");
		String deliverytime = (String) param.get("deliveryTime");
		String address = (String) param.get("deliverAddress");
		String tel = (String) param.get("userphone");
		String menus = (String) param.get("goodsName");
		
		String pre_prices = (String) param.get("totalPrice");
		String count_prices = (String)param.get("totalDiscount");
		
		int pre_price = Integer.parseInt(pre_prices);
		int count_price = Integer.parseInt(count_prices);
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
		
		vo.setPre_price(pre_price);
		vo.setCount_price(count_price);
		vo.setPrice(price);
		vo.setTake(take);
		vo.setStore(store);
		vo.setPaytool(paytool);
		vo.setPaystatus(paystatus);
		vo.setStatus(status);
		vo.setRequirements(requirement);
		
		orderService.doOrder(vo);
		
		if(couponCode != null) {
			couponService.updateUsedCoupon(couponCode);
		}
		
		return "success";
		
	}
	
	@RequestMapping(value="/insertDeliveryAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertDeliveryAddress(@RequestBody Map<String, Object> param, DeliveryAddressVO vo) {
		String userid = (String) param.get("userid");
		String address = (String) param.get("address");
		String storeName = (String) param.get("storeName");
		
		// 해당 매장의 전화번호를 받아온다.
		String storephone = quickOrderService.getStorePhone(storeName);
		System.out.println("매장 전화 : " + storephone);
		
		// 배송지 insert
		vo.setAddress(address);
		vo.setStorename(storeName);
		vo.setStorephone(storephone);
		vo.setUserid(userid);
		
		orderService.insertDeliveryAddress(vo);
		return storephone;
	}
	
	@RequestMapping(value="/insertStoreAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertStoreAddress(@RequestBody Map<String, Object> param, StoreAddressVO vo) {
		System.out.println("포장 매장 추가");
		String userid = (String) param.get("userid");
		String storename = (String) param.get("storename");
		
		vo.setUserid(userid);
		vo.setStorename(storename);
		
		orderService.insertStoreAddress(vo);
		return storename;
	}
	
	@RequestMapping(value="/deleteDeliveryAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String deleteDeliveryAddress(@RequestBody Map<String, Object> param, DeliveryAddressVO vo) {
		String userid = (String) param.get("userid");
		String address = (String) param.get("address");
		
		System.out.println(userid);
		System.out.println(address);
		
		// 배송지 delete
		vo.setUserid(userid);
		vo.setAddress(address);
		
		orderService.deleteDeliveryAddress(vo);
		
		return "success";
	}
	
	@RequestMapping(value="/deleteStoreAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String deleteStoreAddress(@RequestBody Map<String, Object> param, StoreAddressVO vo) {
		String userid = (String) param.get("userid");
		String storename = (String) param.get("storename");
		
		System.out.println(userid);
		System.out.println(storename);
		
		// 배송지 delete
		vo.setUserid(userid);
		vo.setStorename(storename);
		
		orderService.deleteStoreAddress(vo);
		
		return storename;
	}
	
	@RequestMapping("/orderCategory.do")
	public ModelAndView getOrderCategory(ModelAndView mav) {
		System.out.println("메뉴 카테고리 선택페이지 열기");
		
		mav.setViewName("/order/orderCategory");
		return mav;
	}
	
	@RequestMapping("/openStoreAddr.do")
	public ModelAndView openStoreAddr(ModelAndView mav) {
		mav.addObject("storeNameList", storeNameList);
		mav.setViewName("quickorder/storeAddr");
		return mav;
	}
	
	
}
