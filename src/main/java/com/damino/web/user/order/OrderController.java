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
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.user.coupon.CouponService;
import com.damino.web.user.coupon.CouponVO;
import com.damino.web.user.goods.GoodsListService;
import com.damino.web.user.goods.UserBasketVO;
import com.damino.web.user.quickorder.QuickOrderService;

@Controller
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
	
	@RequestMapping("/getOrderPage.do")
	public ModelAndView getOrderPage(ModelAndView mav, HttpSession session) {
		System.out.println("���/�����ֹ� ������ ����");
		
		String userid = (String) session.getAttribute("userid");
		
		List<DeliveryAddressVO> deliveryAddressList = orderService.getDeliveryAddressList(userid);
		List<StoreAddressVO> storeAddressList = orderService.getStoreAddressList(userid);
		
		mav.addObject("deliveryAddressList", deliveryAddressList);
		mav.addObject("storeAddressList", storeAddressList);
		mav.setViewName("order/orderGubun");
		
		return mav;
	}
	
	@RequestMapping("/orderPage.do")
	public ModelAndView orderPage(ModelAndView mav, HttpSession session, HttpServletRequest request) {
		System.out.println("�����ϱ� ������ ����");
		//���� ���� �ð� ����
		request.getSession().setMaxInactiveInterval(300000);
		String userid = (String) session.getAttribute("userid");
		
		List<DeliveryAddressVO> deliveryAddressList = orderService.getDeliveryAddressList(userid);
		List<StoreAddressVO> storeAddressList = orderService.getStoreAddressList(userid);
		List<CouponVO> couponList = couponService.getMyCouponList(userid); // ��밡�� ���� ����Ʈ �ҷ�����
		
		String storeName = (String) session.getAttribute("storename");
		
		if(storeName != null) {
			MarketVO hourInfo = quickOrderService.getBusinessHour(storeName); // ��޸�����
			mav.addObject("hourInfo", hourInfo);
		}else { 
			for (int i=0; i<deliveryAddressList.size(); i++) {
				DeliveryAddressVO vo = deliveryAddressList.get(i);
				//System.out.println("��޸���2 : " + vo.getStorename());
				
				MarketVO hourInfo = quickOrderService.getBusinessHour(vo.getStorename());
				mav.addObject("hourInfo", hourInfo);
			}
		}
		System.out.println("storeAddressList" + storeName);
		
		String couponName = ""; // �������� ������ ���ڿ�
		String couponCode = ""; // �����ڵ带 ������ ���ڿ�
		String discountRate = ""; // ������ �������� ������ ���ڿ�
		
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
		
		// userid ���� ��ٱ��� ��� ȣ��
		List<UserBasketVO> basketList = goodsListService.getBasketPizza(userid);
		List<UserBasketVO> toppingList = goodsListService.getBasketTopping(userid);
		List<UserBasketVO> sideList = goodsListService.getBasketSide(userid);
		List<UserBasketVO> etcList = goodsListService.getBasketEtc(userid);

		mav.addObject("basketList", basketList);
		mav.addObject("toppingList", toppingList);
		mav.addObject("sideList", sideList);
		mav.addObject("etcList", etcList);
		
		mav.setViewName("/order/order_page");
		return mav;
	}
	
	/*
	 * @RequestMapping("/getStoreTime.do") public ModelAndView
	 * getStoreTime(ModelAndView mav, HttpSession session) { //MarketVO hourInfo =
	 * quickOrderService.getBusinessHour( storeAddressList.getStorename()); // ��޸�����
	 * �����ð� ���� ��������
	 * 
	 * 
	 * return mav;
	 * 
	 * }
	 */
	
	@RequestMapping(value="/insertDeliveryAddress.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertDeliveryAddress(@RequestBody Map<String, Object> param, DeliveryAddressVO vo) {
		String userid = (String) param.get("userid");
		String address = (String) param.get("address");
		String storeName = (String) param.get("storeName");
		
		// �ش� ������ ��ȭ��ȣ�� �޾ƿ´�.
		String storephone = quickOrderService.getStorePhone(storeName);
		System.out.println("���� ��ȭ : " + storephone);
		
		// ����� insert
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
		System.out.println("���� ���� �߰�");
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
		
		// ����� delete
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
		
		// ����� delete
		vo.setUserid(userid);
		vo.setStorename(storename);
		
		orderService.deleteStoreAddress(vo);
		
		return storename;
	}
	
	@RequestMapping("/orderCategory.do")
	public ModelAndView getOrderCategory(ModelAndView mav) {
		System.out.println("�޴� ī�װ� ���������� ����");
		
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
