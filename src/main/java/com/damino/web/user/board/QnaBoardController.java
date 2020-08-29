package com.damino.web.user.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.board.paging.PageMaker;
import com.damino.web.user.board.paging.Paging;

@Controller
public class QnaBoardController {
	@Autowired
	private QnaBoardService qnaBoardService;
	
	@RequestMapping(value = "/myquestionlist.do", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList(HttpServletRequest request, HttpServletResponse response, QnaBoardVO vo, Paging pa, HttpSession session) throws Throwable{
		System.out.println("내 질문내역 1:1 열기");
		String userid = (String)session.getAttribute("userid");
		System.out.println(userid);
		pa.setWriterId(userid);
		
		//1:1 문의게시판 페이징처리
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList(pa);
		System.out.println(boardList.toString());
		
		vo.setWriterId(userid);
		int count = qnaBoardService.getQnaCount(vo);
		 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestionList");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //총 게시글 개수
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
	@RequestMapping(value="/myquestion_view.do", method=RequestMethod.GET)
	public ModelAndView myQuestion(QnaBoardVO vo) {
		System.out.println("1:1 문의글 상세");
		QnaBoardVO qnaBoard = qnaBoardService.myQuestion(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestion_view");
		mav.addObject("qnaboard", qnaBoard);
		return mav;
	}
	
	@RequestMapping(value="/qnaDeleteBoard.do", method=RequestMethod.POST)
	public String deleteBoard(@ModelAttribute QnaBoardVO vo) {
		System.out.println("1:1 글 삭제");
		qnaBoardService.qnaDeleteBoard(vo);
		return "redirect:myquestionlist.do";
	}
	
	@RequestMapping(value="/qnaInsertBoard.do", method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute QnaBoardVO vo) {
		System.out.println("1:1 글 작성");
		
		//회원정보 테이블 조회하여 아이디, 연락처, 이메일 셋팅 필요
		vo.setWriterId("userid");
		vo.setPhone("01012341234");
		vo.setEmail("test@hanmail.net");
		System.out.println("작성자 : " + vo.getWriterId());
		System.out.println("제목 : " + vo.getTitle());
		System.out.println("내용 : " + vo.getContent());
		System.out.println("연락처 : " + vo.getPhone());
		System.out.println("문의유형 : " + vo.getQnaType());
		System.out.println("지역 : " + vo.getStoreRegion());
		System.out.println("매장명 : " + vo.getStoreName());
		
		qnaBoardService.qnaInsertBoard(vo);
		return "redirect:myquestionlist.do";
	}
	
	
	/**
	 * 관리자 권한으로 1:1 문의사항 - 전체조회 접근하는 경로
	 */
	@RequestMapping(value = "/myquestionlist.admdo", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList_adm(HttpSession session, HttpServletRequest request, QnaBoardVO vo, HttpServletResponse response, Paging pa) throws Throwable{
		System.out.println("관리자권한으로 질문내역 1:1 열기");
		
		//1:1 문의게시판 페이징처리
		//String userid = (String)session.getAttribute("userid");
		//System.out.println(userid);
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm(pa);
		System.out.println(boardList.toString());
		
		//vo.setWriterId(userid);
		int count = qnaBoardService.getQnaCountAdm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //총 게시글 개수
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
	/**
	 * 관리자 권한으로 1:1 문의사항 - 처리대기 접근하는 경로
	 */
	@RequestMapping(value = "/myquestionlist_notComplete.admdo", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList_adm_notComplete(HttpSession session, QnaBoardVO vo, HttpServletRequest request, HttpServletResponse response, Paging pa) throws Throwable{
		System.out.println("관리자권한으로 질문내역 1:1 열기");
		
		//String userid = (String)session.getAttribute("userid");
		//System.out.println(userid);
		
		//1:1 문의게시판 페이징처리
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm_notComplete(pa);
		System.out.println(boardList.toString());
		
		//vo.setWriterId(userid);
		int count = qnaBoardService.getQnaCountAdm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //총 게시글 개수
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
}
