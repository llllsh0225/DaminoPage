package com.damino.web.user.userinfo;

import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.board.MailService;
import com.damino.web.user.board.MailVO;
import com.damino.web.user.login.UserVO;
import com.damino.web.user.regist.RegistService;
import com.damino.web.user.regist.UserMemberVO;

@Controller
public class UserInfoController {
	@Autowired 
	private UserInfoService userInfoService;
	@Autowired
	private RegistService registService;
	@Autowired
	private MailService mailService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping("/withdrawal.do")
	public ModelAndView getWithdrawal() {
		System.out.println("ȸ��Ż�� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userinfo/withdrawal");
		return mav;
	}
	
	@RequestMapping("/myuserinfoconfirm.do")
	public ModelAndView getMyUserInfoConfirm() {
		System.out.println("�� �������� ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myUserInfoConfirm");
		return mav;
	}
	

	@RequestMapping("/changeinfo.do")
	public ModelAndView getPasswdCheck(@ModelAttribute UserInfoVO vo, Authentication auth, ModelAndView mav) {
		System.out.println("ȸ�� �������� ������ ����");
		System.out.println("auth : " + auth);
		UserInfoVO passwdCheck = userInfoService.passwdCheck(vo);
		boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), passwdCheck.getUserpasswd());
		if(passwdCheck != null && pwdMatch == true) {//sql���� ������ ���� null�� �ƴϰ� ��й�ȣ ��ġ���ΰ� true�̸� ����
			mav.setViewName("/userinfo/change_info");
			return mav;
		}else if(passwdCheck != null && pwdMatch == false) {//sql���� ���̵�� ���������� ��й�ȣ�� Ʋ����� ����
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
		System.out.println("ȸ�� �������� �� ����������");
		// ��й�ȣ ��ȣȭ ó��
		System.out.println(vo.getUserpasswd());
		String pwd = vo.getUserpasswd();
		String userpasswd = pwdEncoder.encode(pwd);
		
		vo.setUserpasswd(userpasswd);
		
		// ������� ó��
		String birthday1 = request.getParameter("birthday1");
		String birthday2 = request.getParameter("birthday2");
		String birthday3 = request.getParameter("birthday3");
		String birthday = birthday1 + "/" + birthday2 + "/" + birthday3;
		
		vo.setBirthday(birthday);
		
		// ��ȭ��ȣ ó��
		String phone1 = request.getParameter("sel_hand_tel1");
		String phone2 = request.getParameter("hand_tel2");
		String phone3 = request.getParameter("hand_tel3");
		String phone = phone1 + phone2 + phone3;
		
		vo.setPhone(phone);
		
		// �̸��� ó��
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1 + "@" + email2;
		
		vo.setEmail(email);
		
		// ���� �������� ���� ���� ó��
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
	
	// ���̵�ã�� & ��й�ȣ ���� �ڵ��� ����
	@RequestMapping(value="sendSMSAuthKey.do", method=RequestMethod.POST)
	@ResponseBody
	public String doSendSMSAuthKey(@RequestBody Map<String, Object> param, UserMemberVO vo) {
		String phone = (String) param.get("phone");
		String authKey = "";

		Random rand = new Random();
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			authKey += ran;
		}

		System.out.println("������ ��ȣ : " + phone);
		System.out.println("���� ��ȣ : " + authKey);

		registService.certifiedPhoneNumber(phone, authKey);

		return authKey;
	}
	
	@RequestMapping(value="sendEmailAuthKey.do", method=RequestMethod.POST)
	@ResponseBody
	public String doSendEmailAuthKey(@RequestBody Map<String, Object> param, MailVO vo) throws MessagingException {
		String email = (String) param.get("email");
		String authKey = "";
		
		Random rand = new Random();
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			authKey += ran;
		}
		System.out.println("���� ��ȣ : " + authKey);
		
		vo.setTo(email);
		vo.setFrom("daminopizzaadm@gmail.com");
		vo.setSubject("�ٹ̳����� ������ȣ�Դϴ�.");
		vo.setContent("���� ��ȣ : " + authKey);
		
		mailService.sendMail(vo);
		
		return authKey;
	}
	
	@RequestMapping(value="findUserId.do", method=RequestMethod.POST)
	@ResponseBody
	public String findUserId(@RequestBody Map<String, Object> param, UserVO vo) {
		String username = (String) param.get("username");
		String birthday = (String) param.get("birthday");
		String phone = (String) param.get("phone");
		String email = (String) param.get("email");
		
		vo.setUsername(username);
		vo.setBirthday(birthday);
		vo.setPhone(phone);
		vo.setEmail(email);
		
		String userid = userInfoService.findUserId(vo);
		return userid;
	}
	
	@RequestMapping(value="updatePasswd.do", method=RequestMethod.POST)
	@ResponseBody
	public String updatePasswd(@RequestBody Map<String, Object> param, UserVO vo) {
		String userid = (String) param.get("userid");
		String prepw = (String) param.get("passwd");
		
		System.out.println(userid + " / " + prepw);
		
		// ��й�ȣ ��ȣȭ
		String passwd = pwdEncoder.encode(prepw);
		
		vo.setUserid(userid);
		vo.setUserpasswd(passwd);
		
		userInfoService.updatePasswd(vo);
		
		return "success";
	}
	
	@RequestMapping("updatepwResult.do")
	public ModelAndView openChangepwResult(ModelAndView mav) {
		System.out.println("��й�ȣ ���� ��� ������ ����");
		
		mav.setViewName("userinfo/updatepw_result");
		
		return mav;
	}
	
	@RequestMapping("openWithdrawal.do")
	public ModelAndView openWithdrawalPage(ModelAndView mav) {
		System.out.println("ȸ��Ż�� ������ ����");
		
		mav.setViewName("userinfo/withdrawal");
		
		return mav;
	}
	
	@RequestMapping(value="doWithdraw.do", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView chkPasswd(ModelAndView mav, UserInfoVO vo, HttpSession session) {
		System.out.println("ȸ�� Ż�� - ���̵�/��й�ȣ ��ġ Ȯ��");
		
		UserInfoVO passwdCheck = userInfoService.passwdCheck(vo);
		
		boolean pwdMatch = pwdEncoder.matches(vo.getUserpasswd(), passwdCheck.getUserpasswd());
		
		System.out.println(passwdCheck.getUserpasswd() + " / " + vo.getUserpasswd() + " / " + pwdMatch);
		
		if(passwdCheck != null && pwdMatch == true) {
			userInfoService.memberWithdraw(vo);
			session.invalidate();
			mav.addObject("msg", "logout"); // logout �޼��� ����
			mav.setViewName("userinfo/withdraw_result");
		}else if(passwdCheck != null && pwdMatch == false) {
			mav.setViewName("userinfo/withdrawal");
			mav.addObject("msg", "fail");
		}
		
		return mav;
	}
}
