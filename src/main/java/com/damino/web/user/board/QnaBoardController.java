package com.damino.web.user.board;

import java.util.List;

import javax.mail.MessagingException;
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
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping("/qnaForm.do")
	public ModelAndView getQnaFormPage() {
		System.out.println("1:1 문의 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/qnaForm");
		return mav;
	}
	
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
	public ModelAndView myQuestion(ModelAndView mav, QnaBoardVO vo, HttpSession session) {
		System.out.println("1:1 문의글 상세");
		String writerId = (String) session.getAttribute("userid");
		
		vo.setWriterId(writerId);
		
		QnaBoardVO qnaBoard = qnaBoardService.myQuestion(vo);
		int count = qnaBoardService.getQnaCount(vo);
		
		mav.setViewName("/mypage/myQuestion_view");
		mav.addObject("qnaboard", qnaBoard);
		mav.addObject("count", count);
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
	public ModelAndView getMyQuestionList_adm() throws Throwable{
		System.out.println("관리자권한으로 질문내역 1:1 열기");
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm();
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCountAdm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //총 게시글 개수
		
		
		return mav;
	}
	
	/**
	 * 관리자 권한으로 1:1 문의사항 - 처리대기 접근하는 경로
	 */
	@RequestMapping(value = "/myquestionlist_notComplete.admdo", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList_adm_notComplete(QnaBoardVO vo) throws Throwable{
		System.out.println("관리자권한으로 질문내역 1:1 열기");
		
		
		//1:1 문의게시판 페이징처리
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm_notComplete();
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCountAdm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //총 게시글 개수
		
		return mav;
	}
	
	@RequestMapping("/myquestion_reply.admdo")
	public ModelAndView getMyQuestion_reply(ModelAndView mav, QnaBoardVO vo) {
		System.out.println("관리자권한으로 1:1문의 상세내용 조회");
		
		QnaBoardVO qna = qnaBoardService.myQuestion(vo);
		
		mav.addObject("qna", qna);
		mav.setViewName("/userQnaBoard/myQuestion_reply");
		
		return mav;
	}
	
	@RequestMapping(value="registQnaReply.admdo", method=RequestMethod.POST)
	public String registQnaReply(QnaBoardVO vo, MailVO mail) throws MessagingException {
		System.out.println("관리자페이지에서 1:1 문의 답변 등록");
		
		QnaBoardVO qna = qnaBoardService.myQuestion(vo);
		
		String username = qnaBoardService.getQnaWriterName(qna);
		
		mail.setTo(qna.getEmail()); // 문의고객 메일주소
		mail.setFrom("daminopizzaadm@gmail.com"); // 다미노피자 메일주소
		mail.setSubject(username + "님의 문의사항에 대한 답변입니다.");
		mail.setContent("[문의내용]\r\n\r\n" + qna.getContent() + "\r\n\r\n==================================\r\n\r\n[답변내용]\r\n\r\n" + qna.getReplyContent());
		
		
		qnaBoardService.registQnaReply(vo);
		mailService.sendMail(mail);
		
		return "redirect:myquestionlist.admdo";
	}
	
}
