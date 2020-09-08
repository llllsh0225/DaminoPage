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
	private AdminMemberLoginService adminMemberLoginService; //홈페이지 관리자 로그인
	@Autowired
	private OrderlistService orderlistService; //주문내역(건수)
	@Autowired
	private SalesStatusService salesStatusService;//주문내역(차트)
	@Autowired
	private BoardService boardService;//게시판 목록
	@Autowired
	private FaqService faqService;//faq 목록

	@Autowired
	private BCryptPasswordEncoder pwdEncoder; // 비밀번호 암호화 기능 수행하는 객체

	@RequestMapping(value = "/adminloginCheck.admdo", method = RequestMethod.POST)
	private ModelAndView adminLoginCheck(AdminMemberLoginVO vo,
			ModelAndView mav, HttpServletRequest request) {
		System.out.println("[관리자 로그인 정보확인]");
		HttpSession session = request.getSession();

		String checker = "0000"; // 초기화비번

		// 비번이 임시 비번일경우.
		if (vo.getAdminpassword().equals(checker)) {
			try {
				AdminMemberLoginVO adminidcheck = adminMemberLoginService
						.login(vo);
				boolean idMatch = vo.getAdminid()
						.equals(adminidcheck.getAdminid());
				System.out.println("[입력한 아이디] : " + vo.getAdminid());
				System.out.println("[DB 존재여부] : " + idMatch);

				if (adminidcheck != null && idMatch) {
					System.out.println("-- 초기화 비번 성공 --");
					System.out.println("관리자 : " + adminidcheck.getAdminid());

					session.setAttribute("adminid", adminidcheck.getAdminid());
					session.setAttribute("admin", adminidcheck);

					mav.addObject("msg", "changepw");
					mav.setViewName("/members/member/passwordChange");
					return mav;
				} else if (adminidcheck != null && idMatch == false) {
					mav.addObject("msg", "fail"); // 메세지 출력.
					mav.setViewName("members/member/login"); // 로그인 페이지로 이동
					return mav;
				}
				mav.setViewName("members/member/login"); // 로그인 페이지로 이동
				return mav;
			} catch (NullPointerException e) {
				System.err.println("[nullpointer 예외] : " + e); // sql에서 가져올 아이디가
																// 없는 경우
				mav.addObject("msg", "fail"); // 메세지 출력.
				mav.setViewName("members/member/login"); // 로그인 페이지로 이동
				return mav;
			}

		} else {
			try {
				AdminMemberLoginVO adminlogin = adminMemberLoginService
						.login(vo);
				boolean pwdMatch = pwdEncoder.matches(vo.getAdminpassword(),
						adminlogin.getAdminpassword()); // DB에 잇는 비번과 입력받은 비번이
														// 일치여부확인
				System.out.println("[입력한 비밀번호] : " + vo.getAdminpassword());
				System.out.println("[패스워드 일치여부] : " + pwdMatch);

				if (adminlogin != null && pwdMatch == true) { // sql에서 가져온 값이null이 아니고 비밀번호가 일치할때(로그인성공)
					System.out.println("---- 로그인 성공. ----");
					System.out.println("관리자 아이디 : " + adminlogin.getAdminid());
					System.out.println(
							"관리자 비밀번호 : " + adminlogin.getAdminpassword());
					// -- sql select로 adminid, adminpassword를 가져와서 확인 .

					session.setAttribute("adminid", adminlogin.getAdminid());
					session.setAttribute("admin", adminlogin);
					// -- session객체에 adminid이라는 키에 로그인한 관리자의 id값을 저장
					// - session객체 admin에 adminlogin 객체 저장.

					List<FaqVO> faqMain = faqService.faqMain(); //faq 목록
					List<BoardVO> boardListMain = boardService.BoardListMain(); //게시물 목록
					int orderCount = orderlistService.orderCount(); // 전체 주문건수

					List<SalesVO> daily = salesStatusService.getDaily(); //일일 날짜 (차트)
					List<SalesVO> dailyCount = salesStatusService.getDailyCount(); //일일 날짜 주문건수(차트)
					
					mav.addObject("daily", daily);
					mav.addObject("dailyCount", dailyCount);
					mav.addObject("boardListMain", boardListMain);
					mav.addObject("faqMain", faqMain);
					mav.addObject("orderCount", orderCount);
					mav.setViewName("/main");
					return mav;

				} else if (adminlogin != null && pwdMatch == false) { // sql에가져온 갑이랑입력 비번이다를 경우
					mav.addObject("msg", "fail"); // 메세지 출력.
					mav.setViewName("members/member/login"); // 로그인 페이지로 이동
					return mav;
				} else {
					mav.setViewName("members/member/login"); // 로그인 페이지로 이동
					return mav;
				}

			} catch (NullPointerException e) { // sql에서 가져올 아이디가 없는 경우
				System.err.println("[nullpointer 예외] : " + e);
				mav.addObject("msg", "fail"); // 메세지 출력.
				mav.setViewName("members/member/login"); // 로그인 페이지로 이동
				return mav;
			}
		}

	}

	// -- 로그아웃 --
	@RequestMapping("/logout.admdo")
	private ModelAndView logout(AdminMemberLoginVO vo, ModelAndView mav,
			HttpSession session) {
		System.out.println("---- 로그아웃 ----");
		System.out.println("대상 : " + session.getAttribute("adminid")); // session
																		// 'adminid'
		session.invalidate(); // session 초기화
		mav.addObject("msg", "logout"); // <<<< 이걸 남겨야하나
		mav.addObject("adminid", vo.getAdminid()); // <<<< 이걸 남겨야하나(20/0805)
		// mav.setViewName("members/member/login");
		mav.setViewName("main");
		return mav;
	}

	/**
	 * 매장관리자 - 점포승인 관련
	 */
	@RequestMapping("/marketList.admdo")
	public ModelAndView getAdminMarketListPage(ModelAndView mav,
			HttpSession session) {
		System.out.println("점포 목록 페이지 열기");
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
		System.out.println("매장관리자 승인상태 변경");

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
		System.out.println("매장관리자 삭제");

		int seq = (Integer) param.get("seq");
		vo.setSeq(seq);

		adminMemberLoginService.marketMemDel(vo);

		return "success";

	}
	@RequestMapping("/marketEdit.admdo")
	public ModelAndView getAdminMarketEditPage(MarketAdminMemberVO vo,
			HttpServletRequest request, ModelAndView mav, HttpSession session) {
		String adminid = (String) session.getAttribute("adminid");
		System.out.println("관리자 화면의 메인페이지 열기");

		if (adminid == null) {
			System.out.println(adminid);
			mav.setViewName("/members/managerLogin");
			return mav;
		} else {

			int seq = Integer.parseInt(request.getParameter("seq"));
			// int seq =
			vo.setSeq(seq);

			// 조회 서비스 호출
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
		System.out.println("매장관리자 비밀번호 변경");

		int seq = (Integer) param.get("seq");
		String pwd = (String) param.get("managerPasswd");
		String managerPasswd = pwdEncoder.encode(pwd);

		vo.setSeq(seq);
		vo.setManagerPasswd(managerPasswd);

		adminMemberLoginService.changeManagerPasswd(vo);

		return "success";

	}

}
