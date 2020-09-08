package com.damino.web.admin.market.member.regist;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		
		@RequestMapping(value ="/searchStore.smdo", method = RequestMethod.POST)
		@ResponseBody
		public List<MarketAdminMemberVO> searchStore(@RequestBody Map<String, Object> params, HttpServletRequest request) {
			//storeRegion에 해당되는 매장명 담을 배열 선언
			String storeRegion = (String)params.get("storeRegion");
			System.out.println("storeRegion : " + storeRegion);
			
			List<MarketAdminMemberVO> storeList = marketAdminRegistService.searchStore(storeRegion);
			System.out.println("[storeName] :"+ storeList);
	            
	 
			return storeList;
		}
		
		@RequestMapping("/storeManagerInfo.smdo")
		public ModelAndView getStoreManagerInfoPage() {
			System.out.println("매출 현황 페이지 열기");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/store/storeManagerInfo");
			
			return mav;
		}
}
