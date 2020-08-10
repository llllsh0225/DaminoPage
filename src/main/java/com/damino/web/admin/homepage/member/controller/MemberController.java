package com.damino.web.admin.homepage.member.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.homepage.member.vo.MemberVO;
import com.damino.web.admin.hompage.member.service.IMemberService;

import net.nurigo.java_sdk.api.Message;


@Controller
public class MemberController {

	@Autowired
	IMemberService memberService;
	
	@RequestMapping(value="memberInfo.admdo", method= {RequestMethod.GET, RequestMethod.POST} )
	public ModelAndView getMemberList() {
		List<MemberVO> userList = memberService.selectAllMembers();
		System.out.println(userList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("members/member/memberInfo");
		mav.addObject("userList", userList);
		return mav;
	}
	
	@RequestMapping(value="/sendSms2.admdo")
	public String sendSms(HttpServletRequest request) throws Exception {
		
		String api_key = "NCSGT81IOU5Z8QFW"; // API KEY
		String api_secret = "B5AFCHCWXWG3SYM1QVUHSOSOXD4BTXIJ"; // API SECRET
		String daminoTel = "01093613740"; // CoolSMS에 등록된 발신 번호
		Message sendKey = new Message(api_key, api_secret);
	

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("from", daminoTel);		
		set.put("to", (String)request.getParameter("from"));
		set.put("text", (String)request.getParameter("text"));
		set.put("type", "SMS");

		System.out.println(set);
		
		JSONObject result =  sendKey.send(set);
		System.out.println(result);

		return "redirect:main.admdo";
	}
	
	@RequestMapping(value ="/smsForm2.admdo", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public ModelAndView getAdminSmsFormPage(@RequestParam(value="phone", required=false) List<String> valueArr) {
		System.out.println("문자 발송 페이지 열기");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/smsForm2");
//		mav.addObject(valueArr);
//		System.out.println(valueArr);
		return mav;
	}
}
