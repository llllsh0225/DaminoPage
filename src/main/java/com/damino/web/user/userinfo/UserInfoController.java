package com.damino.web.user.userinfo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.login.UserVO;

@Controller
public class UserInfoController {
	@Autowired 
	private UserInfoService userInfoService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping("/myuserinfoconfirm.do")
	public ModelAndView getMyUserInfoConfirm() {
		System.out.println("내 정보수정 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myUserInfoConfirm");
		return mav;
	}
	

	@RequestMapping("/changeinfo.do")
	public ModelAndView getPasswdCheck(@ModelAttribute UserInfoVO vo, Authentication auth, ModelAndView mav) {
		System.out.println("회원 정보변경 페이지 열기");
		System.out.println("auth : " + auth);
		UserInfoVO passwdCheck = userInfoService.passwdCheck(vo);
		boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), passwdCheck.getUserpasswd());
		if(passwdCheck != null && pwdMatch == true) {//sql에서 가져온 값이 null이 아니고 비밀번호 일치여부가 true이면 성공
			mav.setViewName("/userinfo/change_info");
			return mav;
		}else if(passwdCheck != null && pwdMatch == false) {//sql에서 아이디는 가져왔으나 비밀번호가 틀린경우 실패
			mav.addObject("msg", "fail");
			mav.setViewName("/mypage/myUserInfoConfirm");
			return mav;
		}else {
			mav.addObject("msg", "fail");
			mav.setViewName("/mypage/myUserInfoConfirm");
			return mav;
		}
	}
	
	@RequestMapping("/changecomplete.do")
	public String getChangeComplete(@ModelAttribute UserInfoVO vo, HttpServletRequest request) {
		System.out.println("회원 정보변경 후 메인페이지");
		// 비밀번호 암호화 처리
		System.out.println(vo.getUserpasswd());
		String pwd = vo.getUserpasswd();
		String userpasswd = pwdEncoder.encode(pwd);
		
		vo.setUserpasswd(userpasswd);
		
		// 생년월일 처리
		String birthday1 = request.getParameter("birthday1");
		String birthday2 = request.getParameter("birthday2");
		String birthday3 = request.getParameter("birthday3");
		String birthday = birthday1 + "/" + birthday2 + "/" + birthday3;
		
		vo.setBirthday(birthday);
		
		// 전화번호 처리
		String phone1 = request.getParameter("sel_hand_tel1");
		String phone2 = request.getParameter("hand_tel2");
		String phone3 = request.getParameter("hand_tel3");
		String phone = phone1 + phone2 + phone3;
		
		vo.setPhone(phone);
		
		// 이메일 처리
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1 + "@" + email2;
		
		vo.setEmail(email);
		
		// 광고성 정보제공 수신 비동의 처리
		if(vo.getReceive_sms() == null) {
			vo.setReceive_sms("N");
		}
		if(vo.getReceive_email() == null) {
			vo.setReceive_email("N");
		}
		if(vo.getReceive_dm() == null) {
			vo.setReceive_dm("N");
		}
		
		userInfoService.updateUserMember(vo);
		return "redirect:main.do";
	}
}
