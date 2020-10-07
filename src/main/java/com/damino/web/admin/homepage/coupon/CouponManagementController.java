package com.damino.web.admin.homepage.coupon;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.coupon.CouponVO;

@Controller
public class CouponManagementController {
	@Autowired
	private CouponManagementService couponManagementService;
	
	@RequestMapping(value="/couponList.admdo", method=RequestMethod.GET)
	public ModelAndView getCouponListPage(ModelAndView mav) {
		System.out.println("ȸ�� ���� -> ���� ���� ������ ����");
		List<CouponVO> couponList = couponManagementService.getUsersCouponList();
		
		mav.addObject("couponList", couponList);
		mav.setViewName("/members/coupon/couponList");
		return mav;
	}
	
	@RequestMapping("/insertCouponForm.admdo")
	public ModelAndView insertCouponForm(ModelAndView mav) {
		System.out.println("���θ������ ����� ����");
		
		mav.setViewName("/members/coupon/couponInsert");
		return mav;
	}
	
	@RequestMapping(value="/insertPromotionCoupon.admdo", method=RequestMethod.POST)
	public ModelAndView insertPromotionCoupon(ModelAndView mav, HttpServletRequest request, MakePromotionCouponVO vo) {
		System.out.println("���θ�� ���� insert");
		
		// ������ ���θ�� ���� ���� ���� 
		vo.setCoupon_name(request.getParameter("coupon_name"));
		vo.setOrdertype(request.getParameter("ordertype"));
		vo.setDiscountrate(Integer.parseInt(request.getParameter("discountrate")));
		vo.setNumber(Integer.parseInt(request.getParameter("number")));
		
		List<CouponVO> couponList = couponManagementService.makePromotionCoupons(vo); // CouponVO ����Ʈ ����
		
		for(int i=0; i<couponList.size(); i++) {
			CouponVO coupon = couponList.get(i);
			coupon.setCoupon_code(couponManagementService.getNextCouponCode()); // ���θ�� �����ڵ� ����
			coupon.setSeq(couponManagementService.getNextCouponSeq() + i); // ���� �������ѹ� ����
			System.out.println(coupon.getCoupon_code());
			System.out.println(coupon.getSeq());
		}
		
		Map<String, Object> list = new HashMap<String, Object>();
		list.put("couponList", couponList);
		
		couponManagementService.insertPromotionCoupon(list); // ���θ�� ���� insert ��� ����
		
		mav.setViewName("redirect:/couponList.admdo");
		return mav;
	}
	
	@RequestMapping(value = "deleteCoupon.admdo", method=RequestMethod.POST)
	@ResponseBody
	public String deleteCoupon(@RequestBody Map<String, Object> param) {
		int seq = (int)param.get("seq");
		
		couponManagementService.deleteCoupon(seq);
		
		return "success";
	}
}
