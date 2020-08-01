package com.damino.web.admin.market.member.regist;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

	@RequestMapping(value = "/registMember.do", method = RequestMethod.POST)
	public ModelAndView registMember(@ModelAttribute MarketAdminMemberVO vo, ModelAndView mav, HttpServletRequest request) throws Throwable{
		System.out.println("회원 등록");

		// 비밀번호 암호화 처리
		String pwd = vo.getManagerPasswd();
		String managerPasswd = pwdEncoder.encode(pwd);
		
		vo.setManagerPasswd(managerPasswd);
		
		// 매장 지역, 매장명 처리
		String phone1 = request.getParameter("sel_hand_tel1");
		String phone2 = request.getParameter("hand_tel2");
		String phone3 = request.getParameter("hand_tel3");
		String phone = phone1 + phone2 + phone3;
		
		//vo.setPhone(phone);	
		
		marketAdminRegistService.registMarketAdminMember(vo);
		mav.addObject("usermember", vo.getManagerName());
		mav.setViewName("/userinfo/regResult");
		
		return mav;
	}
	
	// ID중복체크 ( loginController 에서 옮길 예정 )
		@RequestMapping(value ="/idCheck.smdo", method = RequestMethod.POST)
		@ResponseBody
		public int idcheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
			int cnt_id = 0;
			String managerId = (String)params.get("managerId");
			System.out.println("#Controller[id] : "+ managerId);
			
			cnt_id = marketAdminRegistService.idCheck(managerId);
			System.out.println("[cnt_id] :"+ cnt_id);// --- 중복일경우  1 , 사용가능 0 ---
			return cnt_id;
		}
	
}
