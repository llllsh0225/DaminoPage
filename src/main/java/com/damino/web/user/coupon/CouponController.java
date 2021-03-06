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

import com.damino.web.user.board.paging.PageMaker;
import com.damino.web.user.board.paging.Paging;
import com.damino.web.user.login.UserVO;

@Controller
public class CouponController {
	@Autowired
	private CouponService couponService;
	
	@RequestMapping("/ecouponInput.do")
	public ModelAndView getEcouponInputPage() {
		System.out.println("ecoupon 입력페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/ecoupon/ecouponInput");
		return mav;
	}
	
	@RequestMapping(value="/insertManiaCoupon.do", method=RequestMethod.POST)
	@ResponseBody
	public String insertManiaCoupon(@RequestBody Map<String, Object> param, HttpServletRequest request) { // [나의 정보]-[쿠폰 지급] 매니아 쿠폰 지급 메서드
		String result = ""; // return 값
		
		// myLevel.jsp 에서 넘어온 유저 정보
		String userid = (String)param.get("userid");
		String userlevel = (String)param.get("userlevel");
		
		System.out.println("[쿠폰발급] userid = " + userid);
		System.out.println("[쿠폰발급] userlevel = " + userlevel);
		
		int chkCoupon = couponService.chkUsersManiaCoupon(userid); // 쿠폰 유효기간이 당월 말일까지인 user의 쿠폰이 있는지 확인
		System.out.println("이미 발급된 쿠폰수 : " + chkCoupon);
		
		if(chkCoupon == 0) {
			// 이미 지급된 쿠폰이 존재하지 않을 때
			Map<String, String> userInfo = new HashMap<String, String>(); // mybatis insert 시 parameter로 들어갈 HashMap
			userInfo.put("userid", userid);
			userInfo.put("userlevel", userlevel);
			couponService.insertManiaCoupon(userInfo); // 쿠폰 지급 메서드
			result = "success";
			System.out.println(result);
		}else if(chkCoupon != 0){
			// 이미 지급된 쿠폰이 존재할 때
			result = "duplicated";
			System.out.println(result);
		}
		return result; // 중복발급 과정이 진행되지 않음
	}
	
	@RequestMapping("/mycoupon.do")
	public ModelAndView getMyCouponList(Paging pa, HttpSession session, ModelAndView mav) {
		System.out.println("내 쿠폰함 열기");
		String userid = (String)session.getAttribute("userid"); // 세션에 저장된 userid 가져오기
		pa.setWriterId(userid);
		List<CouponVO> myCouponList = couponService.getMyCouponList(pa); // 사용자가 보유한 사용 가능 쿠폰 리스트
		int count = couponService.countCoupon(userid);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		mav.addObject("count", count);
		mav.addObject("myCouponList", myCouponList);
		mav.setViewName("/mypage/myCoupon");
		return mav;
	}
	
	@RequestMapping(value="/selectCouponList.do", method=RequestMethod.POST)
	@ResponseBody
	public List<CouponVO> selectCouponList(@RequestBody Map<String, Object> param, Paging pa){
		String userid = (String) param.get("userid");
		pa.setWriterId(userid);
		List<CouponVO> selectCouponList = couponService.getMyCouponList(pa); // 선물할 쿠폰 selectbox에 넣을 쿠폰 리스트
		System.out.println(selectCouponList.toString());
		return selectCouponList;
	}
	
	@RequestMapping(value="/presentCoupon.do", method=RequestMethod.POST)
	@ResponseBody
	public String presentCoupon(@RequestBody Map<String, Object> info) {
		String presentCouponCode = (String) info.get("couponCode"); // 선물할 쿠폰코드
		String name = (String) info.get("name"); // 선물할 유저
		String phone = (String) info.get("phone"); // 선물할 유저의 핸드폰번호
		
		Map<String, String> param = new HashMap<String, String>(); // select 구문에 들어갈 parameter를 담은 Map
		param.put("name", name);
		param.put("phone", phone);
		
		UserVO presentUser = couponService.searchUser(param); // 선물할 유저가 존재하는지 체크
		
		if(presentUser != null) { // 존재할 시
			System.out.println("해당 유저에게 쿠폰 선물 가능");
			
			Map<String, String> updateParam = new HashMap<String, String>(); // update 구문에 들어갈 parameter를 담은 Map
			String presentUserId = presentUser.getUserid(); // 선물할 유저의 id
			
			updateParam.put("presentCouponCode", presentCouponCode);
			updateParam.put("presentUserId", presentUserId);
			
			couponService.updatePresentCoupon(updateParam); // 선물할 쿠폰 데이터 업데이트
			couponService.sendCouponCodeSMS(name, phone, presentCouponCode); // CoolSMS API 이용하여 쿠폰코드 LMS 발송
			
			return "success";
		}else { // 그렇지 않을 시
			System.out.println("해당 유저에게 쿠폰 선물 불가");
			return "fail";
		}
	}
	
	@RequestMapping(value="registEcoupon.do", method=RequestMethod.POST)
	@ResponseBody
	public String registEcoupon(@RequestBody Map<String, Object> param) {
		String userid = (String) param.get("userid"); // 세션에 저장된 userid
		String couponCode = (String) param.get("couponCode"); // 사용자가 입력한 쿠폰코드
		String chkCouponType = String.valueOf(couponCode.charAt(0)); // 쿠폰코드의 첫번째 문자 ('M' : 선물받은 매니아 쿠폰 / 'P' : 프로모션 쿠폰)
		
		Map<String, String> couponInfo = new HashMap<String, String>();
		couponInfo.put("userid", userid);
		couponInfo.put("couponCode", couponCode);
		couponInfo.put("chkCouponType", chkCouponType);
		
		int couponChk = couponService.chkRegistEcoupon(couponInfo); // 등록 가능한 쿠폰인지 확인
		
		if(couponChk != 0) {
			System.out.println("등록 가능 쿠폰");
			couponService.registEcoupon(couponInfo); // 쿠폰 사용가능 여부(chkusable) 컬럼을 'Y'로 업데이트
			
			return "success";
		}else {
			System.out.println("등록 불가 쿠폰");
			return "fail";
		}
	}
	
	@RequestMapping("/ecouponResult.do")
	public ModelAndView getEcouponResultPage(ModelAndView mav) {
		System.out.println("ecoupon 등록결과 확인페이지 열기");
		
		mav.setViewName("/ecoupon/ecouponResult");
		return mav;
	}
	
	@RequestMapping("/deleteExpirations.admdo")
	@ResponseBody
	public String deleteExpirations() {
		
		System.out.println("유효기간 만료쿠폰 일괄 삭제");
		
		couponService.deleteExpirations();
		
		return "success";
	}

}
