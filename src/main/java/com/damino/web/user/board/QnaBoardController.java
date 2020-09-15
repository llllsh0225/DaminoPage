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
		System.out.println("1:1 ���� ������ ����");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/qnaForm");
		return mav;
	}
	
	@RequestMapping(value = "/myquestionlist.do", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList(HttpServletRequest request, HttpServletResponse response, QnaBoardVO vo, Paging pa, HttpSession session) throws Throwable{
		System.out.println("�� �������� 1:1 ����");
		String userid = (String)session.getAttribute("userid");
		System.out.println(userid);
		pa.setWriterId(userid);
		
		//1:1 ���ǰԽ��� ����¡ó��
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList(pa);
		System.out.println(boardList.toString());
		
		vo.setWriterId(userid);
		int count = qnaBoardService.getQnaCount(vo);
		 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestionList");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //�� �Խñ� ����
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
	@RequestMapping(value="/myquestion_view.do", method=RequestMethod.GET)
	public ModelAndView myQuestion(ModelAndView mav, QnaBoardVO vo, HttpSession session) {
		System.out.println("1:1 ���Ǳ� ��");
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
		System.out.println("1:1 �� ����");
		qnaBoardService.qnaDeleteBoard(vo);
		return "redirect:myquestionlist.do";
	}
	
	@RequestMapping(value="/qnaInsertBoard.do", method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute QnaBoardVO vo) {
		System.out.println("1:1 �� �ۼ�");
		
		System.out.println("�ۼ��� : " + vo.getWriterId());
		System.out.println("���� : " + vo.getTitle());
		System.out.println("���� : " + vo.getContent());
		System.out.println("����ó : " + vo.getPhone());
		System.out.println("�������� : " + vo.getQnaType());
		System.out.println("���� : " + vo.getStoreRegion());
		System.out.println("����� : " + vo.getStoreName());
		
		qnaBoardService.qnaInsertBoard(vo);
		return "redirect:myquestionlist.do";
	}
	
	
	/**
	 * ������ �������� 1:1 ���ǻ��� - ��ü��ȸ �����ϴ� ���
	 */
	@RequestMapping(value = "/myquestionlist.admdo", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList_adm() throws Throwable{
		System.out.println("�����ڱ������� �������� 1:1 ����");
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm();
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCountAdm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //�� �Խñ� ����
		
		
		return mav;
	}
	
	/**
	 * ������ �������� 1:1 ���ǻ��� - ó����� �����ϴ� ���
	 */
	@RequestMapping(value = "/myquestionlist_notComplete.admdo", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList_adm_notComplete(QnaBoardVO vo) throws Throwable{
		System.out.println("�����ڱ������� �������� 1:1 ����");
		
		
		//1:1 ���ǰԽ��� ����¡ó��
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm_notComplete();
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCountAdm();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //�� �Խñ� ����
		
		return mav;
	}
	
	@RequestMapping("/myquestion_reply.admdo")
	public ModelAndView getMyQuestion_reply(ModelAndView mav, QnaBoardVO vo) {
		System.out.println("�����ڱ������� 1:1���� �󼼳��� ��ȸ");
		
		QnaBoardVO qna = qnaBoardService.myQuestion(vo);
		
		mav.addObject("qna", qna);
		mav.setViewName("/userQnaBoard/myQuestion_reply");
		
		return mav;
	}
	
	@RequestMapping(value="registQnaReply.admdo", method=RequestMethod.POST)
	public String registQnaReply(QnaBoardVO vo, MailVO mail) throws MessagingException {
		System.out.println("���������������� 1:1 ���� �亯 ���");
		
		QnaBoardVO qna = qnaBoardService.myQuestion(vo);
		
		String username = qnaBoardService.getQnaWriterName(qna);
		
		mail.setTo(qna.getEmail()); // ���ǰ� �����ּ�
		mail.setFrom("daminopizzaadm@gmail.com"); // �ٹ̳����� �����ּ�
		mail.setSubject(username + "���� ���ǻ��׿� ���� �亯�Դϴ�.");
		mail.setContent("[���ǳ���]\r\n\r\n" + qna.getContent() + "\r\n\r\n==================================\r\n\r\n[�亯����]\r\n\r\n" + qna.getReplyContent());
		
		
		qnaBoardService.registQnaReply(vo);
		mailService.sendMail(mail);
		
		return "redirect:myquestionlist.admdo";
	}
	
}
