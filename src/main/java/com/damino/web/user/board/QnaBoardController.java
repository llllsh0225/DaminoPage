package com.damino.web.user.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public ModelAndView getMyQuestionList(HttpServletRequest request, HttpServletResponse response, Paging pa) throws Throwable{
		System.out.println("�� �������� 1:1 ����");
		
		pa.setWriterId("userid");
		
		//1:1 ���ǰԽ��� ����¡ó��
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList(pa);
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCount();
		 
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
	public ModelAndView myQuestion(QnaBoardVO vo) {
		System.out.println("1:1 ���Ǳ� ��");
		QnaBoardVO qnaBoard = qnaBoardService.myQuestion(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myQuestion_view");
		mav.addObject("qnaboard", qnaBoard);
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
		
		//ȸ������ ���̺� ��ȸ�Ͽ� ���̵�, ����ó, �̸��� ���� �ʿ�
		vo.setWriterId("userid");
		vo.setPhone("01012341234");
		vo.setEmail("test@hanmail.net");
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
	public ModelAndView getMyQuestionList_adm(HttpServletRequest request, HttpServletResponse response, Paging pa) throws Throwable{
		System.out.println("�����ڱ������� �������� 1:1 ����");
		
		//1:1 ���ǰԽ��� ����¡ó��
		
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm(pa);
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCount();
		 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //�� �Խñ� ����
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
	/**
	 * ������ �������� 1:1 ���ǻ��� - ó����� �����ϴ� ���
	 */
	@RequestMapping(value = "/myquestionlist_notComplete.admdo", method = RequestMethod.GET)
	public ModelAndView getMyQuestionList_adm_notComplete(HttpServletRequest request, HttpServletResponse response, Paging pa) throws Throwable{
		System.out.println("�����ڱ������� �������� 1:1 ����");
		
		//1:1 ���ǰԽ��� ����¡ó��
		List<QnaBoardVO> boardList = qnaBoardService.myQuestionList_adm_notComplete(pa);
		System.out.println(boardList.toString());
		
		int count = qnaBoardService.getQnaCount();
		 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/userQnaBoard/myQuestionList_adm");
		
		mav.addObject("boardList", boardList);
		mav.addObject("count", count); //�� �Խñ� ����
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(count);
		
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
}
