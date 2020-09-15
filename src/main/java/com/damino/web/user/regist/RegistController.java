package com.damino.web.user.regist;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

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
public class RegistController {
	@Autowired
	private RegistService registService;

	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // 비밀번호 암호화 기능 수행하는 객체

	@RequestMapping("/regForm.do")
	   public ModelAndView getUserRegFormPage() {
	      System.out.println("사용자 회원 가입 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regForm");
	      
	      return mav;
	   }
	@RequestMapping("/regResult.do")
	   public ModelAndView getUserRegResultPage() {
	      System.out.println("사용자 회원 가입 결과 페이지 열기");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regResult");
	      
	      return mav;
	   
	}
	
	@RequestMapping(value = "/registMember.do", method = RequestMethod.POST)
	public ModelAndView registMember(@ModelAttribute UserMemberVO vo, ModelAndView mav, HttpServletRequest request) throws Throwable{
		System.out.println("회원 등록");

		// 비밀번호 암호화 처리
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
		
		registService.registMember(vo);
		mav.addObject("usermember", vo.getUsername());
		mav.setViewName("/userinfo/regResult");
		
		return mav;
	}

	@RequestMapping(value = "/sendAuthKey.do", produces = "text/json; charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	// 휴대폰 인증문자 발송
	public String sendSMS(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		System.out.println("인증번호 송신");
		System.out.println(params.toString());

		String phoneNumber = (String) params.get("phoneNumber");
		String authKey = "";

		Random rand = new Random();
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			authKey += ran;
		}

		System.out.println("수신자 번호 : " + phoneNumber);
		System.out.println("인증 번호 : " + authKey);

		registService.certifiedPhoneNumber(phoneNumber, authKey);

		return authKey;
	}
	
	// ID중복체크 ( loginController 에서 옮길 예정 )
	@RequestMapping(value ="/idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idcheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		int cnt_id = 0;
		String userid = (String)params.get("userid");
		System.out.println("#Controller[id] : "+ userid);
		
		cnt_id = registService.idcheck(userid);
		System.out.println("[cnt_id] :"+ cnt_id);// --- 중복일경우  1 , 사용가능 0 ---
		return cnt_id;
	}
	
	// 이메일 중복체크
	@RequestMapping(value ="/emailCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int emailcheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		int cnt_email = 0;
		String email = (String)params.get("chkEmail");
		System.out.println("#Controller[email] : "+ email);
		
		cnt_email = registService.emailcheck(email);
		System.out.println("[cnt_email] :"+ cnt_email);// --- 중복일경우  1 , 사용가능 0 ---
		return cnt_email;
	}
	
	
}
