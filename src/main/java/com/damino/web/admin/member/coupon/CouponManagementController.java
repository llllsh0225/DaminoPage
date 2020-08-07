package com.damino.web.admin.member.coupon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
}
