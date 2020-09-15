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
	private BCryptPasswordEncoder pwdEncoder; // ��й�ȣ ��ȣȭ ��� �����ϴ� ��ü

	@RequestMapping("/regForm.do")
	   public ModelAndView getUserRegFormPage() {
	      System.out.println("����� ȸ�� ���� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regForm");
	      
	      return mav;
	   }
	@RequestMapping("/regResult.do")
	   public ModelAndView getUserRegResultPage() {
	      System.out.println("����� ȸ�� ���� ��� ������ ����");
	      
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("/userinfo/regResult");
	      
	      return mav;
	   
	}
	
	@RequestMapping(value = "/registMember.do", method = RequestMethod.POST)
	public ModelAndView registMember(@ModelAttribute UserMemberVO vo, ModelAndView mav, HttpServletRequest request) throws Throwable{
		System.out.println("ȸ�� ���");

		// ��й�ȣ ��ȣȭ ó��
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
		
		registService.registMember(vo);
		mav.addObject("usermember", vo.getUsername());
		mav.setViewName("/userinfo/regResult");
		
		return mav;
	}

	@RequestMapping(value = "/sendAuthKey.do", produces = "text/json; charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	// �޴��� �������� �߼�
	public String sendSMS(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		System.out.println("������ȣ �۽�");
		System.out.println(params.toString());

		String phoneNumber = (String) params.get("phoneNumber");
		String authKey = "";

		Random rand = new Random();
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			authKey += ran;
		}

		System.out.println("������ ��ȣ : " + phoneNumber);
		System.out.println("���� ��ȣ : " + authKey);

		registService.certifiedPhoneNumber(phoneNumber, authKey);

		return authKey;
	}
	
	// ID�ߺ�üũ ( loginController ���� �ű� ���� )
	@RequestMapping(value ="/idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idcheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		int cnt_id = 0;
		String userid = (String)params.get("userid");
		System.out.println("#Controller[id] : "+ userid);
		
		cnt_id = registService.idcheck(userid);
		System.out.println("[cnt_id] :"+ cnt_id);// --- �ߺ��ϰ��  1 , ��밡�� 0 ---
		return cnt_id;
	}
	
	// �̸��� �ߺ�üũ
	@RequestMapping(value ="/emailCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int emailcheck(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		int cnt_email = 0;
		String email = (String)params.get("chkEmail");
		System.out.println("#Controller[email] : "+ email);
		
		cnt_email = registService.emailcheck(email);
		System.out.println("[cnt_email] :"+ cnt_email);// --- �ߺ��ϰ��  1 , ��밡�� 0 ---
		return cnt_email;
	}
	
	
}
