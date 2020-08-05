package com.damino.web.user.coupon;

import java.util.HashMap;
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

@Controller
public class CouponController {
	@Autowired
	private CouponService couponService;
	
	@RequestMapping(value="/insertManiaCoupon.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertManiaCoupon(@RequestBody Map<String, Object> param, HttpServletRequest request) { // [���� ����]-[���� ����] �ŴϾ� ���� ���� �޼���
		String result = ""; // return ��
		
		// myLevel.jsp ���� �Ѿ�� ���� ����
		String userid = (String)param.get("userid");
		String userlevel = (String)param.get("userlevel");
		
		System.out.println("[�����߱�] userid = " + userid);
		System.out.println("[�����߱�] userlevel = " + userlevel);
		
		int chkCoupon = couponService.chkUsersManiaCoupon(userid); // ���� ��ȿ�Ⱓ�� ��� ���ϱ����� user�� ������ �ִ��� Ȯ��
		System.out.println("�̹� �߱޵� ������ : " + chkCoupon);
		
		if(chkCoupon == 0) {
			// �̹� ���޵� ������ �������� ���� ��
			Map<String, String> userInfo = new HashMap<String, String>(); // mybatis insert �� parameter�� �� HashMap
			userInfo.put("userid", userid);
			userInfo.put("userlevel", userlevel);
			couponService.insertManiaCoupon(userInfo); // ���� ���� �޼���
			result = "success";
			System.out.println(result);
		}else if(chkCoupon != 0){
			// �̹� ���޵� ������ ������ ��
			result = "duplicated";
			System.out.println(result);
		}
		return result; // �ߺ��߱� ������ ������� ����
	}
	
	@RequestMapping("/mycoupon.do")
	public ModelAndView getMyCouponList(HttpSession session, ModelAndView mav) {
		System.out.println("�� ������ ����");
		String userid = (String)session.getAttribute("userid"); // ���ǿ� ����� userid ��������
		
		List<CouponVO> myCouponList = couponService.getMyCouponList(userid); // ����ڰ� ������ ��� ���� ���� ����Ʈ
		
		mav.addObject("myCouponList", myCouponList);
		mav.setViewName("/mypage/myCoupon");
		return mav;
	}
}
