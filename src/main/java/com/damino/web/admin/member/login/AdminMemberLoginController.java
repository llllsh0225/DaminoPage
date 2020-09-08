package com.damino.web.admin.member.login;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardService;
import com.damino.web.admin.board.BoardVO;
import com.damino.web.admin.faq.FaqService;
import com.damino.web.admin.faq.FaqVO;
import com.damino.web.admin.market.MarketService;
import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.admin.orderlist.OrderlistService;
import com.damino.web.admin.salesstatus.SalesStatusService;
import com.damino.web.admin.salesstatus.SalesVO;

@Controller
@SessionAttributes("adminid")
public class AdminMemberLoginController {

	@Autowired
	private AdminMemberLoginService adminMemberLoginService; //Ȩ������ ������ �α���
	@Autowired
	private OrderlistService orderlistService; //�ֹ�����(�Ǽ�)
	@Autowired
	private SalesStatusService salesStatusService;//�ֹ�����(��Ʈ)
	@Autowired
	private BoardService boardService;//�Խ��� ���
	@Autowired
	private FaqService faqService;//faq ���

	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // ��й�ȣ ��ȣȭ ��� �����ϴ� ��ü

	@RequestMapping(value = "/adminloginCheck.admdo", method = RequestMethod.POST)
	private ModelAndView adminLoginCheck(AdminMemberLoginVO vo,
			ModelAndView mav, HttpServletRequest request) {
		System.out.println("[������ �α��� ����Ȯ��]");
		HttpSession session = request.getSession();

		String checker = "0000"; // �ʱ�ȭ���

		// ����� �ӽ� ����ϰ��.
		if (vo.getAdminpassword().equals(checker)) {
			try {
				AdminMemberLoginVO adminidcheck = adminMemberLoginService
						.login(vo);
				boolean idMatch = vo.getAdminid()
						.equals(adminidcheck.getAdminid());
				System.out.println("[�Է��� ���̵�] : " + vo.getAdminid());
				System.out.println("[DB ���翩��] : " + idMatch);

				if (adminidcheck != null && idMatch) {
					System.out.println("-- �ʱ�ȭ ��� ���� --");
					System.out.println("������ : " + adminidcheck.getAdminid());

					session.setAttribute("adminid", adminidcheck.getAdminid());
					session.setAttribute("admin", adminidcheck);

					mav.addObject("msg", "changepw");
					mav.setViewName("/members/member/passwordChange");
					return mav;
				} else if (adminidcheck != null && idMatch == false) {
					mav.addObject("msg", "fail"); // �޼��� ���.
					mav.setViewName("members/member/login"); // �α��� �������� �̵�
					return mav;
				}
				mav.setViewName("members/member/login"); // �α��� �������� �̵�
				return mav;
			} catch (NullPointerException e) {
				System.err.println("[nullpointer ����] : " + e); // sql���� ������ ���̵�
																// ���� ���
				mav.addObject("msg", "fail"); // �޼��� ���.
				mav.setViewName("members/member/login"); // �α��� �������� �̵�
				return mav;
			}

		} else {
			try {
				AdminMemberLoginVO adminlogin = adminMemberLoginService
						.login(vo);
				boolean pwdMatch = pwdEncoder.matches(vo.getAdminpassword(),
						adminlogin.getAdminpassword()); // DB�� �մ� ����� �Է¹��� �����
														// ��ġ����Ȯ��
				System.out.println("[�Է��� ��й�ȣ] : " + vo.getAdminpassword());
				System.out.println("[�н����� ��ġ����] : " + pwdMatch);

				if (adminlogin != null && pwdMatch == true) { // sql���� ������ ����null�� �ƴϰ� ��й�ȣ�� ��ġ�Ҷ�(�α��μ���)
					System.out.println("---- �α��� ����. ----");
					System.out.println("������ ���̵� : " + adminlogin.getAdminid());
					System.out.println(
							"������ ��й�ȣ : " + adminlogin.getAdminpassword());
					// -- sql select�� adminid, adminpassword�� �����ͼ� Ȯ�� .

					session.setAttribute("adminid", adminlogin.getAdminid());
					session.setAttribute("admin", adminlogin);
					// -- session��ü�� adminid�̶�� Ű�� �α����� �������� id���� ����
					// - session��ü admin�� adminlogin ��ü ����.

					List<FaqVO> faqMain = faqService.faqMain(); //faq ���
					List<BoardVO> boardListMain = boardService.BoardListMain(); //�Խù� ���
					int orderCount = orderlistService.orderCount(); // ��ü �ֹ��Ǽ�

					List<SalesVO> daily = salesStatusService.getDaily(); //���� ��¥ (��Ʈ)
					List<SalesVO> dailyCount = salesStatusService.getDailyCount(); //���� ��¥ �ֹ��Ǽ�(��Ʈ)
					
					mav.addObject("daily", daily);
					mav.addObject("dailyCount", dailyCount);
					mav.addObject("boardListMain", boardListMain);
					mav.addObject("faqMain", faqMain);
					mav.addObject("orderCount", orderCount);
					mav.setViewName("/main");
					return mav;

				} else if (adminlogin != null && pwdMatch == false) { // sql�������� ���̶��Է� ����̴ٸ� ���
					mav.addObject("msg", "fail"); // �޼��� ���.
					mav.setViewName("members/member/login"); // �α��� �������� �̵�
					return mav;
				} else {
					mav.setViewName("members/member/login"); // �α��� �������� �̵�
					return mav;
				}

			} catch (NullPointerException e) { // sql���� ������ ���̵� ���� ���
				System.err.println("[nullpointer ����] : " + e);
				mav.addObject("msg", "fail"); // �޼��� ���.
				mav.setViewName("members/member/login"); // �α��� �������� �̵�
				return mav;
			}
		}

	}

	// -- �α׾ƿ� --
	@RequestMapping("/logout.admdo")
	private ModelAndView logout(AdminMemberLoginVO vo, ModelAndView mav,
			HttpSession session) {
		System.out.println("---- �α׾ƿ� ----");
		System.out.println("��� : " + session.getAttribute("adminid")); // session
																		// 'adminid'
		session.invalidate(); // session �ʱ�ȭ
		mav.addObject("msg", "logout"); // <<<< �̰� ���ܾ��ϳ�
		mav.addObject("adminid", vo.getAdminid()); // <<<< �̰� ���ܾ��ϳ�(20/0805)
		// mav.setViewName("members/member/login");
		mav.setViewName("main");
		return mav;
	}

	/**
	 * ��������� - �������� ����
	 */
	@RequestMapping("/marketList.admdo")
	public ModelAndView getAdminMarketListPage(ModelAndView mav,
			HttpSession session) {
		System.out.println("���� ��� ������ ����");
		String adminid = (String) session.getAttribute("adminid");

		if (adminid == null) {

			mav.setViewName("/members/managerLogin");
			return mav;
		} else {
			List<MarketAdminMemberVO> marketMemList = adminMemberLoginService
					.marketAdminList();

			mav.addObject("marketMemList", marketMemList);
			mav.setViewName("/members/market/marketList");

			return mav;
		}
	}

	@RequestMapping("/changeCheckMem.admdo")
	@ResponseBody
	public String changeCheckMem(@RequestBody Map<String, Object> param,
			MarketAdminMemberVO vo, HttpSession session) {
		System.out.println("��������� ���λ��� ����");

		int seq = (Integer) param.get("seq");

		String checkMem = (String) param.get("checkMem");

		vo.setCheckMem(checkMem);
		vo.setSeq(seq);

		adminMemberLoginService.changeCheckMem(vo);

		return "success";

	}
	@RequestMapping("/marketMemDel.admdo")
	@ResponseBody
	public String marketMemDel(@RequestBody Map<String, Object> param,
			MarketAdminMemberVO vo, HttpSession session) {
		System.out.println("��������� ����");

		int seq = (Integer) param.get("seq");
		vo.setSeq(seq);

		adminMemberLoginService.marketMemDel(vo);

		return "success";

	}
	@RequestMapping("/marketEdit.admdo")
	public ModelAndView getAdminMarketEditPage(MarketAdminMemberVO vo,
			HttpServletRequest request, ModelAndView mav, HttpSession session) {
		String adminid = (String) session.getAttribute("adminid");
		System.out.println("������ ȭ���� ���������� ����");

		if (adminid == null) {
			System.out.println(adminid);
			mav.setViewName("/members/managerLogin");
			return mav;
		} else {

			int seq = Integer.parseInt(request.getParameter("seq"));
			// int seq =
			vo.setSeq(seq);

			// ��ȸ ���� ȣ��
			// adminMemberLoginService.marketMemView(vo);
			MarketAdminMemberVO marketMemView = adminMemberLoginService
					.marketMemView(vo);

			mav.addObject("marketMemView", marketMemView);

			mav.setViewName("/members/market/marketEdit");
			return mav;
		}
	}

	@RequestMapping("/changeManagerPasswd.admdo")
	@ResponseBody
	public String changeManagerPasswd(@RequestBody Map<String, Object> param,
			MarketAdminMemberVO vo, HttpSession session) {
		System.out.println("��������� ��й�ȣ ����");

		int seq = (Integer) param.get("seq");
		String pwd = (String) param.get("managerPasswd");
		String managerPasswd = pwdEncoder.encode(pwd);

		vo.setSeq(seq);
		vo.setManagerPasswd(managerPasswd);

		adminMemberLoginService.changeManagerPasswd(vo);

		return "success";

	}

}
