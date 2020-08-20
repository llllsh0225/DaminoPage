package com.damino.web.user.order;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.quickorder.QuickOrderAddressVO;
import com.damino.web.user.quickorder.QuickOrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private QuickOrderService quickOrderService;
	
	@RequestMapping("/getOrderPage.do")
	public ModelAndView getOrderPage(ModelAndView mav, HttpSession session) {
		System.out.println("���/�����ֹ� ������ ����");
		
		String userid = (String) session.getAttribute("userid");
		
		List<DeliveryAddressVO> deliveryAddressList = orderService.getDeliveryAddressList(userid);
		
		mav.addObject("deliveryAddressList", deliveryAddressList);
		mav.setViewName("order/orderGubun");
		
		return mav;
	}
	
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
}
