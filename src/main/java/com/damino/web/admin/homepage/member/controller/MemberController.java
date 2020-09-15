package com.damino.web.admin.homepage.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.homepage.member.vo.MemberVO;
import com.damino.web.admin.hompage.member.service.IMemberService;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;

import net.nurigo.java_sdk.api.Message;


@Controller
public class MemberController {

	@Autowired
	IMemberService memberService;
	
	@RequestMapping(value="memberInfo.admdo", method= {RequestMethod.GET, RequestMethod.POST} )
	public ModelAndView getMemberList() {
		List<MemberVO> userList = memberService.selectAllMembers();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("members/member/memberInfo");
		mav.addObject("userList", userList);
		return mav;
	}
	
	@RequestMapping("/smsForm.admdo")
	public ModelAndView getAdminSmsFormPage() {
		System.out.println("문자 발송 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/smsForm");
		
		return mav;
	}
	
	@RequestMapping("/emailForm.admdo")
	public ModelAndView getAdminEmailFormPage() {
		System.out.println("이메일 발송 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/member/emailForm");
		
		return mav;
	}
	
	@RequestMapping(value="/sendSms2.admdo")
	public String sendSms(HttpServletRequest request ) throws Exception {
		
		String api_key = "NCSGT81IOU5Z8QFW"; // API KEY
		String api_secret = "B5AFCHCWXWG3SYM1QVUHSOSOXD4BTXIJ"; // API SECRET
		String daminoTel = "01093613740"; // CoolSMS에 등록된 발신 번호
		Message sendKey = new Message(api_key, api_secret);

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("from", daminoTel);	
		set.put("to", (String)request.getParameter("from"));
		set.put("text", (String)request.getParameter("text"));
		set.put("type", "SMS");
		System.out.println(set.toString());
		
		JSONObject result =  sendKey.send(set);
		System.out.println(result);

//		}
		return "redirect:main.admdo";
	}

	@PostMapping("/smsForm2.admdo")
	public String sendsms(@RequestParam(value="phone", required=false, defaultValue="no phone") List<String> phone, Model model) {
		model.addAttribute("phones", phone);
		return "members/member/smsForm2";
	}
	
	@RequestMapping("/memberEdit.admdo")
	public ModelAndView getAdminmembersEditPage(MemberVO vo, ModelAndView mav) {
		System.out.println("회원 수정 페이지 열기");
		MemberVO userMember = memberService.getUserMember(vo);
		System.out.println(userMember);
		
		mav.addObject("userMember", userMember);
		mav.setViewName("/members/member/memberEdit");
		
		return mav;
	}
	
	@RequestMapping("/memberDel.admdo")
	@ResponseBody
	public String memberDel(@RequestBody Map<String, Object> param, MemberVO vo, HttpSession session) {
		System.out.println("매장관리자 삭제");

		int seq = (Integer) param.get("seq");
		vo.setSeq(seq);

		memberService.memberDel(vo);

		return "success";

	}

	
}
