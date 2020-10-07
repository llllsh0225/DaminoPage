package com.damino.web.admin.homepage.market;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.nurigo.java_sdk.api.Message;


@Controller // 현재 클래스를 컨트롤러 빈으로 등록
public class MarketController {
	@Autowired
	private MarketService marketService;
	
	@RequestMapping("/storeRegForm.admdo")
	public ModelAndView getAdminStoreRegFormPage() {
		System.out.println("매장 등록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeRegForm");
		
		return mav;
	}
	
	@RequestMapping("/storeView.admdo")
	public ModelAndView getMarketList() {
		System.out.println("매장 목록");
		List<MarketVO> marketList = marketService.getMarketList();
		System.out.println(marketList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/store/storeView");
		mav.addObject("marketList", marketList);
		return mav;
	}

	@RequestMapping(value="/storeEdit.admdo", method=RequestMethod.GET)
	public ModelAndView getMarket(MarketVO vo, HttpServletRequest request, ModelAndView mav, HttpSession session) {
		
		String adminid = (String) session.getAttribute("adminid");
		System.out.println("매장 상세");
		
		if (adminid == null) {
			System.out.println(adminid);
			mav.setViewName("/member/login"); //수정필요
			return mav;
		}
		else {
			int seq = Integer.parseInt(request.getParameter("seq"));
			vo.setSeq(seq);
			MarketVO market = marketService.getMarket(vo);
		
			mav.setViewName("/store/storeEdit");
			mav.addObject("market", market);
			return mav;
		}
	} 
	
	@RequestMapping(value="/changeStoreInfo.admdo", method=RequestMethod.POST)
	@ResponseBody
	public String changeStoreInfo(@RequestBody Map<String, Object> param, MarketVO vo, HttpServletRequest request, ModelAndView mav, HttpSession session) {
		
		String adminid = (String) session.getAttribute("adminid");
		System.out.println("매장 상세");
		
		int seq = (Integer) param.get("seq");
		String storename = (String) param.get("storename");
		String storephone = (String) param.get("storephone");
		String zipcode = (String) param.get("zipcode");
		
		//Object test = param.get("storeaddress");
		//System.out.println("test : " + test);
		
		String storeaddress = (String) param.get("storeaddress");
		String detailaddress = (String) param.get("detailaddress");
		String parkingplace = (String) param.get("parkingplace");
		String parking = (String) param.get("parkinginfo");
		String opentime = (String) param.get("openTime");
		String endtime = (String) param.get("endTime");
		String referinfo = (String) param.get("referinfo");
		
		//수정된 정보 ajax로 받고 vo에 셋팅 필요
		//세팅되면 mapping 파일에 추가하기
		
		vo.setSeq(seq);
		vo.setStorename(storename);
		vo.setStorephone(storephone);
		vo.setZipcode(zipcode);
		vo.setStoreaddress(storeaddress);
		vo.setDetailaddress(detailaddress);
		vo.setParkingplace(parkingplace);
		vo.setParking(parking);
		vo.setOpentime(opentime);
		vo.setEndtime(endtime);
		vo.setReferinfo(referinfo);
		
		marketService.updateMarket(vo);
		
		return "success";
		
	} 
	
	@RequestMapping(value="/updateMarket.admdo", method=RequestMethod.POST)
	public String updateMarket(@ModelAttribute MarketVO vo) {
		System.out.println("매장 정보 수정");
		marketService.updateMarket(vo);
		return "redirect:storeView.admdo";
	}
	
	@RequestMapping(value="/insertMarket.admdo", method=RequestMethod.POST)
	public String insertMarket(@ModelAttribute MarketVO vo) {
		System.out.println("매장 등록");
		marketService.insertMarket(vo);
		return "redirect:storeView.admdo";
	}
	
	@RequestMapping(value="/deleteMarket.admdo", method=RequestMethod.GET)
	public String deleteMarket(@ModelAttribute MarketVO vo) {
		System.out.println("매장 삭제");
		marketService.deleteMarket(vo);
		return "redirect:storeView.admdo";
	}
	
	@RequestMapping(value="/sendSms.admdo")
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

		/*
		 * if ((boolean)result.get("status") == true) { // 메시지 보내기 성공 및 전송결과 출력
		 * System.out.println("성공"); System.out.println(result.get("group_id")); //
		 * 그룹아이디 //System.out.println(result.get("result_code")); // 결과코드
		 * //System.out.println(result.get("result_message")); // 결과 메시지
		 * System.out.println(result.get("success_count")); // 메시지아이디
		 * System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수 } else {
		 * // 메시지 보내기 실패 System.out.println("실패");
		 * //System.out.println(result.get("code")); // REST API 에러코드
		 * //System.out.println(result.get("message")); // 에러메시지 }
		 */

		    return "redirect:main.admdo";
		  }
	}
		
