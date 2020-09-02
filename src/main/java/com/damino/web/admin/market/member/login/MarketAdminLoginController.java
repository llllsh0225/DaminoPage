package com.damino.web.admin.market.member.login;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;

@Controller
@SessionAttributes({ "managername", "managerid", "storeregion", "storename" })
public class MarketAdminLoginController {
	@Autowired
	private MarketAdminLoginService marketAdminLoginService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // ºñ¹Ğ¹øÈ£ ¾ÏÈ£È­ ±â´É ¼öÇàÇÏ´Â °´Ã¼
	@Autowired
	private SalesStatusService salesStatusService;

	@RequestMapping(value="/main.smdo", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getAdminMainPage(HttpSession session, ModelAndView mav, SalesVO vo, MarketAdminVO vo2) {
		String managerid = (String) session.getAttribute("managerid");
		System.out.println("°ü¸®ÀÚ È­¸éÀÇ ¸ŞÀÎÆäÀÌÁö ¿­±â");
<<<<<<< HEAD
=======
//		
//		String getStorename = marketAdminLoginService.getStorename(vo2);
//		System.out.println(getStorename);
		
>>>>>>> parent of 73c6a79... null í¬ì¸í„° ì˜¤ë¥˜ ìˆ˜ì • ë° ë§¤ì¥ê´€ë¦¬ìí˜ì´ì§€ ì˜¤ë¥˜ ìˆ˜ì •
		
		if (managerid == null) {
			System.out.println(managerid);
			mav.setViewName("/members/managerLogin");
			return mav;
		} else {
			String getStorename = vo.getStore();
			vo.setStore(getStorename);
			
			List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo);// ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù yyyy-mmÇüÅÂ·Î °¡Á®¿À±â(Â÷Æ® xÃà)
			System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù : " + storeMonthly);
			
			List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo);// ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¿ùº° ¸ÅÃâ¾× °¡Á®¿È(Â÷Æ® yÃà)
			System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¸ÅÃâ¾× :" + storeMonthlySales);
			
			List<SalesVO> storeMonthlyCount = salesStatusService.getStoreMonthlyCount(vo);
			System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ÁÖ¹®°Ç¼ö : " + storeMonthlyCount);
			
			List<SalesVO> storeYearly = salesStatusService.getStoreYearly(vo);//ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù yyyy-mmÇüÅÂ·Î °¡Á®¿À±â(Â÷Æ® xÃà)
			System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 5³â: " + storeYearly);
			
			List<SalesVO> storeYearlySales = salesStatusService.getStoreYearlySales(vo);//ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¿ùº° ¸ÅÃâ¾× °¡Á®¿È(Â÷Æ® yÃà)
			System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 5³â ¸ÅÃâ¾× :" + storeYearlySales);
			
			List<SalesVO> storeYearlyCount = salesStatusService.getStoreYearlyCount(vo);
			System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 5³â ÁÖ¹®°Ç¼ö : " + storeYearlyCount);
			
			List<SalesVO> storeSalesList = salesStatusService.getStoreSalesList(vo);
			System.out.println("ÇØ´ç ¸ÅÀå ¿ùº° Åë°èÇ¥ : " + storeSalesList);
			
			mav.addObject("storeMonthly", storeMonthly);
			mav.addObject("storeMonthlySales", storeMonthlySales);
			mav.addObject("storeMonthlyCount", storeMonthlyCount);
			mav.addObject("storeYearly", storeYearly);
			mav.addObject("storeYearlySales", storeYearlySales);
			mav.addObject("storeYearlyCount", storeYearlyCount);
			mav.addObject("storeSalesList", storeSalesList);
			
			mav.setViewName("/members/main");
			return mav;
		}
	}

	@RequestMapping("/managerLogin.smdo")
	public ModelAndView getManagerLoginPage() {
		System.out.println("·Î±×ÀÎ ÆäÀÌÁö ¿­±â");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/managerLogin");

		return mav;
	}

	@RequestMapping(value = "/managerLoginCheck.smdo", method = RequestMethod.POST)
	public ModelAndView managerLoginCheck(@ModelAttribute MarketAdminVO vo, String managerpasswd, ModelAndView mav,
			HttpSession session, HttpServletRequest request, SalesVO vo2) {
		System.out.println("·Î±×ÀÎ Á¤º¸ È®ÀÎ");
		session = request.getSession();
		
		
		String getStorename = marketAdminLoginService.getStorename(vo);
		System.out.println(getStorename);
		
		MarketAdminVO managerLogin = marketAdminLoginService.managerLogin(vo);
		System.out.println(managerLogin);
		System.out.println(vo.getManagerid());
		System.out.println(managerLogin.getManagerpasswd());

		boolean pwdMatch = pwdEncoder.matches(managerpasswd, managerLogin.getManagerpasswd());
		System.out.println(pwdMatch);
		if (managerLogin != null && pwdMatch == true) {
			String checkMem = managerLogin.getCheckMem(); // ¸ÅÀå°ü¸®ÀÚ ½ÂÀÎ¿©ºÎ Ã¼Å©
			if (checkMem.equals("Y")) {
				
				vo2.setStore(getStorename);
				List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo2);// ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù yyyy-mmÇüÅÂ·Î °¡Á®¿À±â(Â÷Æ® xÃà)
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù : " + storeMonthly);
				
<<<<<<< HEAD
				List<SalesVO> storeMonthlyCount = salesStatusService.getStoreMonthlyCount(vo2);
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ÁÖ¹®°Ç¼ö : " + storeMonthlyCount);
				
				List<SalesVO> storeYearly = salesStatusService.getStoreYearly(vo2);//ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù yyyy-mmÇüÅÂ·Î °¡Á®¿À±â(Â÷Æ® xÃà)
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 5³â: " + storeYearly);
				
				List<SalesVO> storeYearlySales = salesStatusService.getStoreYearlySales(vo2);//ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¿ùº° ¸ÅÃâ¾× °¡Á®¿È(Â÷Æ® yÃà)
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 5³â ¸ÅÃâ¾× :" + storeYearlySales);
				
				List<SalesVO> storeYearlyCount = salesStatusService.getStoreYearlyCount(vo2);
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 5³â ÁÖ¹®°Ç¼ö : " + storeYearlyCount);
				
				List<SalesVO> storeSalesList = salesStatusService.getStoreSalesList(vo2);
				System.out.println("ÇØ´ç ¸ÅÀå ¿ùº° Åë°èÇ¥ : " + storeSalesList);
				
				mav.addObject("storeMonthly", storeMonthly);
				mav.addObject("storeMonthlySales", storeMonthlySales);
				mav.addObject("storeMonthlyCount", storeMonthlyCount);
				mav.addObject("storeYearly", storeYearly);
				mav.addObject("storeYearlySales", storeYearlySales);
				mav.addObject("storeYearlyCount", storeYearlyCount);
				mav.addObject("storeSalesList", storeSalesList);
=======
				List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo2);// ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¿ùº° ¸ÅÃâ¾× °¡Á®¿È(Â÷Æ® yÃà)	
>>>>>>> parent of 73c6a79... null í¬ì¸í„° ì˜¤ë¥˜ ìˆ˜ì • ë° ë§¤ì¥ê´€ë¦¬ìí˜ì´ì§€ ì˜¤ë¥˜ ìˆ˜ì •
				
				mav.addObject("managerid", managerLogin.getManagerid());
				mav.addObject("managername", managerLogin.getManagername());
				mav.addObject("storeregion", managerLogin.getStoreregion());
				mav.addObject("storename", managerLogin.getStorename());
<<<<<<< HEAD

=======
//				mav.addObject("getStorename", getStorename);
				
				List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo2);// ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù yyyy-mmÇüÅÂ·Î °¡Á®¿À±â(Â÷Æ® xÃà)
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù : " + storeMonthly);

				List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo2);// ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¿ùº° ¸ÅÃâ¾× °¡Á®¿È(Â÷Æ® yÃà)
				System.out.println("ÇØ´ç ¸ÅÀå ÁÖ¹®³»¿ªÀÌ ÀÖ´Â ÃÖ±Ù 12°³¿ù ¸ÅÃâ¾× :" + storeMonthlySales);
				
				mav.addObject("storeMonthly", storeMonthly);
				mav.addObject("storeMonthlySales", storeMonthlySales);
				
>>>>>>> parent of 73c6a79... null í¬ì¸í„° ì˜¤ë¥˜ ìˆ˜ì • ë° ë§¤ì¥ê´€ë¦¬ìí˜ì´ì§€ ì˜¤ë¥˜ ìˆ˜ì •
				System.out.println(managerLogin.getStorename());
				session.setAttribute("msg", "managerLogin");
				mav.setViewName("/members/main");
			}
		} else {
			System.out.println("¿À·ù");
		}

		return mav;
	}

	@RequestMapping(value = "/logout.smdo")
	public String logout(HttpSession session, HttpServletRequest request) {
		// ·Î±×¾Æ¿ô ·ÎÁ÷À» ÀÛ¼º, ·Î±×ÀÎ ÆäÀÌÁö·Î °¡µµ·Ï ÀÛ¼º
		session = request.getSession();
		session.invalidate();
		return "members/managerLogin";
	}

//	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.GET)
//	public String managerChangePage(HttpSession session, Model model) {
//		System.out.println("È¸¿øÁ¤º¸ ¼öÁ¤ ÆäÀÌÁö ¿­±â");
//		String managerId = (String)session.getAttribute("id");
//		MarketAdminVO manager = marketAdminLoginService.checkMemberId(managerId);
//		model.addAttribute("manager", manager);
//		return "members/managerRegister2";
//	}

//	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.POST)
//	public String managerChangePage(Model model, MarketAdminVO manager, HttpSession session) {
//		System.out.println("È¸¿øÁ¤º¸ ¼öÁ¤");
//		
//		String pwd = manager.getManagerpasswd();
//		String managerPasswd = pwdEncoder.encode(pwd);
//		manager.setManagerpasswd(managerPasswd);
//		
//		marketAdminLoginService.updateMember(manager);
//		session.invalidate();
//		System.out.println("¼öÁ¤ÀÌ ¿Ï·á µÇ¾ú½À´Ï´Ù.");
//		return "redirect:/managerLogin.smdo";
//	}

//	@RequestMapping(value="member/update", method=RequestMethod.GET)
//	public String memberUpdate(HttpSession session, Model model) {
//		String id = (String)session.getAttribute("id");
//		MemberVO member = memberService.checkMemberId(id);
//		model.addAttribute("member", member);
//		return "member/update_form";
//	}
//	
//	@RequestMapping(value="member/update", method=RequestMethod.POST)
//	public String memberUpdate(Model model, MemberVO member) { 
//		memberService.updateMember(member);
//		return "redirect:../"; 
//	}

//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.GET)
//	private String loginView(MarketAdminVO vo) {
//		System.out.println("·Î±×ÀÎ ÆäÀÌÁö·Î ÀÌµ¿");
//		System.out.println(marketAdminLoginService.toString());
//		return "members/managerLogin";
//	}	
//	
//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
//	private ModelAndView loginCheck(MarketAdminVO vo, ModelAndView mav, HttpSession session) {
//		System.out.println("·Î±×ÀÎ ÀÎÁõ Ã³¸®");
//		
//		MarketAdminVO user = marketAdminLoginService.getMember(vo);
//		
//		if(user != null) {
//			System.out.println("·Î±×ÀÎ¿¡ ¼º°øÇÏ¿´½À´Ï´Ù.");
//			mav.setViewName("main");
//			return mav;
//		}else {
//			System.out.println("·Î±×ÀÎ¿¡ ½ÇÆĞÇÏ¿´½À´Ï´Ù.");
//			
//			mav.setViewName("login/login");
//
//			return mav;
//		}
//	}
}
