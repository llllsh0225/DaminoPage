package com.damino.web.admin.market.member.regist;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.login.UserVO;
import com.damino.web.user.regist.UserMemberVO;

@Controller
public class MarketAdminRegistController {
	@Autowired
	private MarketAdminRegistService marketAdminRegistService;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // 비밀번호 암호화 기능 수행하는 객체

	@RequestMapping(value = "/registMarketAdminMember.smdo", method = RequestMethod.POST)
	public ModelAndView registMember(@ModelAttribute MarketAdminMemberVO vo, ModelAndView mav, HttpServletRequest request, HttpServletResponse response) throws Throwable{
		System.out.println("매장관리자 멤버 등록");
		
		String storeRegion = request.getParameter("storeRegion");
		vo.setStoreRegion(storeRegion);
		
		String storeName = request.getParameter("storeName");
		vo.setStoreName(storeName);
		
		// 매장 지역, 매장명 처리
		//System.out.println("매니저이름 : " + vo.getManagerName());
		//System.out.println("id : " + vo.getManagerId());
		//System.out.println("password : " + vo.getManagerPasswd());
		//System.out.println("매장 지역 : " + vo.getStoreRegion());
		//System.out.println("매장명 : " + vo.getStoreName());
		
		// 비밀번호 암호화 처리
		String pwd = vo.getManagerPasswd();
		String managerPasswd = pwdEncoder.encode(pwd);

		vo.setManagerPasswd(managerPasswd);
				
		marketAdminRegistService.registMarketAdminMember(vo);
		mav.addObject("MarketAdminMember", vo.getManagerName());
		
		mav.setViewName("/members/managerLogin");
		
		return mav;
	}
	
	// ID중복체크 ( loginController 에서 옮길 예정 )
		@RequestMapping(value ="/managerIdCheck.smdo", method = RequestMethod.POST)
		@ResponseBody
		public int idCheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
			int check_id = 0;
			String managerId = (String)params.get("managerId");
			System.out.println("#Controller[id] : "+ managerId);
			
			check_id = marketAdminRegistService.idCheck(managerId);
			System.out.println("[check_id] :"+ check_id);// --- 중복일경우  1 , 사용가능 0 ---
			return check_id;
		}
		
		@RequestMapping(value ="/daminoStoreList.smdo", method = RequestMethod.POST)
		@ResponseBody
		public String daminoStoreList(@RequestBody Map<String, Object> params, HttpServletRequest request) {
			String daminoStoreList = "";
			
			//daminoStoreList = marketAdminRegistService.emailcheck(email);
			System.out.println("[daminoStoreList] :"+ daminoStoreList);
			return daminoStoreList;
		}
}
