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
	private BCryptPasswordEncoder pwdEncoder; // ��й�ȣ ��ȣȭ ��� �����ϴ� ��ü
	@Autowired
	private SalesStatusService salesStatusService;

	@RequestMapping(value="/main.smdo", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getAdminMainPage(HttpSession session, ModelAndView mav, SalesVO vo, MarketAdminVO vo2) {
		String managerid = (String) session.getAttribute("managerid");
		System.out.println("������ ȭ���� ���������� ����");
<<<<<<< HEAD
=======
//		
//		String getStorename = marketAdminLoginService.getStorename(vo2);
//		System.out.println(getStorename);
		
>>>>>>> parent of 73c6a79... null 포인터 오류 수정 및 매장관리자페이지 오류 수정
		
		if (managerid == null) {
			System.out.println(managerid);
			mav.setViewName("/members/managerLogin");
			return mav;
		} else {
			String getStorename = vo.getStore();
			vo.setStore(getStorename);
			
			List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo);// �ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
			System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� : " + storeMonthly);
			
			List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo);// �ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
			System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ����� :" + storeMonthlySales);
			
			List<SalesVO> storeMonthlyCount = salesStatusService.getStoreMonthlyCount(vo);
			System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� �ֹ��Ǽ� : " + storeMonthlyCount);
			
			List<SalesVO> storeYearly = salesStatusService.getStoreYearly(vo);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
			System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5��: " + storeYearly);
			
			List<SalesVO> storeYearlySales = salesStatusService.getStoreYearlySales(vo);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
			System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5�� ����� :" + storeYearlySales);
			
			List<SalesVO> storeYearlyCount = salesStatusService.getStoreYearlyCount(vo);
			System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5�� �ֹ��Ǽ� : " + storeYearlyCount);
			
			List<SalesVO> storeSalesList = salesStatusService.getStoreSalesList(vo);
			System.out.println("�ش� ���� ���� ���ǥ : " + storeSalesList);
			
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
		System.out.println("�α��� ������ ����");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/members/managerLogin");

		return mav;
	}

	@RequestMapping(value = "/managerLoginCheck.smdo", method = RequestMethod.POST)
	public ModelAndView managerLoginCheck(@ModelAttribute MarketAdminVO vo, String managerpasswd, ModelAndView mav,
			HttpSession session, HttpServletRequest request, SalesVO vo2) {
		System.out.println("�α��� ���� Ȯ��");
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
			String checkMem = managerLogin.getCheckMem(); // ��������� ���ο��� üũ
			if (checkMem.equals("Y")) {
				
				vo2.setStore(getStorename);
				List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo2);// �ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� : " + storeMonthly);
				
<<<<<<< HEAD
				List<SalesVO> storeMonthlyCount = salesStatusService.getStoreMonthlyCount(vo2);
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� �ֹ��Ǽ� : " + storeMonthlyCount);
				
				List<SalesVO> storeYearly = salesStatusService.getStoreYearly(vo2);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5��: " + storeYearly);
				
				List<SalesVO> storeYearlySales = salesStatusService.getStoreYearlySales(vo2);//�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5�� ����� :" + storeYearlySales);
				
				List<SalesVO> storeYearlyCount = salesStatusService.getStoreYearlyCount(vo2);
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 5�� �ֹ��Ǽ� : " + storeYearlyCount);
				
				List<SalesVO> storeSalesList = salesStatusService.getStoreSalesList(vo2);
				System.out.println("�ش� ���� ���� ���ǥ : " + storeSalesList);
				
				mav.addObject("storeMonthly", storeMonthly);
				mav.addObject("storeMonthlySales", storeMonthlySales);
				mav.addObject("storeMonthlyCount", storeMonthlyCount);
				mav.addObject("storeYearly", storeYearly);
				mav.addObject("storeYearlySales", storeYearlySales);
				mav.addObject("storeYearlyCount", storeYearlyCount);
				mav.addObject("storeSalesList", storeSalesList);
=======
				List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo2);// �ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)	
>>>>>>> parent of 73c6a79... null 포인터 오류 수정 및 매장관리자페이지 오류 수정
				
				mav.addObject("managerid", managerLogin.getManagerid());
				mav.addObject("managername", managerLogin.getManagername());
				mav.addObject("storeregion", managerLogin.getStoreregion());
				mav.addObject("storename", managerLogin.getStorename());
<<<<<<< HEAD

=======
//				mav.addObject("getStorename", getStorename);
				
				List<SalesVO> storeMonthly = salesStatusService.getStoreMonthly(vo2);// �ش� ���� �ֹ������� �ִ� �ֱ� 12���� yyyy-mm���·� ��������(��Ʈ x��)
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� : " + storeMonthly);

				List<SalesVO> storeMonthlySales = salesStatusService.getStoreMonthlySales(vo2);// �ش� ���� �ֹ������� �ִ� �ֱ� 12���� ���� ����� ������(��Ʈ y��)
				System.out.println("�ش� ���� �ֹ������� �ִ� �ֱ� 12���� ����� :" + storeMonthlySales);
				
				mav.addObject("storeMonthly", storeMonthly);
				mav.addObject("storeMonthlySales", storeMonthlySales);
				
>>>>>>> parent of 73c6a79... null 포인터 오류 수정 및 매장관리자페이지 오류 수정
				System.out.println(managerLogin.getStorename());
				session.setAttribute("msg", "managerLogin");
				mav.setViewName("/members/main");
			}
		} else {
			System.out.println("����");
		}

		return mav;
	}

	@RequestMapping(value = "/logout.smdo")
	public String logout(HttpSession session, HttpServletRequest request) {
		// �α׾ƿ� ������ �ۼ�, �α��� �������� ������ �ۼ�
		session = request.getSession();
		session.invalidate();
		return "members/managerLogin";
	}

//	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.GET)
//	public String managerChangePage(HttpSession session, Model model) {
//		System.out.println("ȸ������ ���� ������ ����");
//		String managerId = (String)session.getAttribute("id");
//		MarketAdminVO manager = marketAdminLoginService.checkMemberId(managerId);
//		model.addAttribute("manager", manager);
//		return "members/managerRegister2";
//	}

//	@RequestMapping(value="/managerRegister2.smdo", method=RequestMethod.POST)
//	public String managerChangePage(Model model, MarketAdminVO manager, HttpSession session) {
//		System.out.println("ȸ������ ����");
//		
//		String pwd = manager.getManagerpasswd();
//		String managerPasswd = pwdEncoder.encode(pwd);
//		manager.setManagerpasswd(managerPasswd);
//		
//		marketAdminLoginService.updateMember(manager);
//		session.invalidate();
//		System.out.println("������ �Ϸ� �Ǿ����ϴ�.");
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
//		System.out.println("�α��� �������� �̵�");
//		System.out.println(marketAdminLoginService.toString());
//		return "members/managerLogin";
//	}	
//	
//	@RequestMapping(value="/loginTest.smdo", method=RequestMethod.POST)
//	private ModelAndView loginCheck(MarketAdminVO vo, ModelAndView mav, HttpSession session) {
//		System.out.println("�α��� ���� ó��");
//		
//		MarketAdminVO user = marketAdminLoginService.getMember(vo);
//		
//		if(user != null) {
//			System.out.println("�α��ο� �����Ͽ����ϴ�.");
//			mav.setViewName("main");
//			return mav;
//		}else {
//			System.out.println("�α��ο� �����Ͽ����ϴ�.");
//			
//			mav.setViewName("login/login");
//
//			return mav;
//		}
//	}
}
