package com.damino.web.user.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.user.board.paging.PageMaker;
import com.damino.web.user.board.paging.Paging;

@Controller
public class NoticeBoardController {
	@Autowired
	private NoticeBoardService noticeBoardService;

	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public ModelAndView getNoticeBoardList(Paging pa, HttpServletRequest request, ModelAndView mav) {
		System.out.println("�������� ���");
		List<NoticeBoardVO> noticeBoardList = null;
		int countNoticeBoard = 0;
		PageMaker pageMaker = null;
		String gubun = request.getParameter("gubun");

		System.out.println("---> " + gubun);

		if (gubun != null) {
			if (gubun.equals("notice")) {
				System.out.println("ī�װ� - ��������");
				noticeBoardList = noticeBoardService.getNoticeCategory(pa);
				countNoticeBoard = noticeBoardService.countNoticeCategory();
				pageMaker = new PageMaker();
				pageMaker.setPa(pa);
				pageMaker.setTotalCount(countNoticeBoard);
				pageMaker.setGubun(gubun);
			} else {
				System.out.println("ī�װ� - �����ڷ�");
				noticeBoardList = noticeBoardService.getNewsCategory(pa);
				countNoticeBoard = noticeBoardService.countNewsCategory();
				pageMaker = new PageMaker();
				pageMaker.setPa(pa);
				pageMaker.setTotalCount(countNoticeBoard);
				pageMaker.setGubun(gubun);
			}
		} else {
			noticeBoardList = noticeBoardService.getNoticeBoardList(pa);// �Խñ� ���
			countNoticeBoard = noticeBoardService.countNoticeBoard();// �Խñ� ��
			pageMaker = new PageMaker();
			pageMaker.setPa(pa);
			pageMaker.setTotalCount(countNoticeBoard);
			System.out.println(noticeBoardList.toString());

		}

		mav.setViewName("/board/noticeList");
		mav.addObject("noticeBoardList", noticeBoardList);
		mav.addObject("countNoticeBoard", countNoticeBoard);
		mav.addObject("noticePageMaker", pageMaker);
		return mav;
	}

	@RequestMapping(value = "/noticeList.do", method = RequestMethod.POST)
	public ModelAndView getNoticeSearchList(Paging pa, HttpServletRequest request, ModelAndView mav) {
		System.out.println("�������� ���");

		System.out.println("�˻� ���� ---> " + pa.getSearch());
		System.out.println("�˻� Ű���� ---> " + pa.getConditionTemp());
		
		List<NoticeBoardVO> noticeBoardList = null;
		int countNoticeBoard = 0;
		PageMaker pageMaker = null;

		noticeBoardList = noticeBoardService.getNoticeBoardList(pa);// �Խñ� ���
		countNoticeBoard = noticeBoardService.countNoticeBoard();// �Խñ� ��
		pageMaker = new PageMaker();
		pageMaker.setPa(pa);
		pageMaker.setTotalCount(countNoticeBoard);
		System.out.println(noticeBoardList.toString());

		mav.setViewName("/board/noticeList");
		mav.addObject("noticeBoardList", noticeBoardList);
		mav.addObject("countNoticeBoard", countNoticeBoard);
		mav.addObject("noticePageMaker", pageMaker);
		return mav;
	}

	@RequestMapping(value = "/noticeDetail.do", method = RequestMethod.GET)
	public ModelAndView getNoticeBoard(NoticeBoardVO vo, HttpSession session) {
		System.out.println("�������� ��");
		noticeBoardService.increaseCnt(vo, session);// ��ȸ�� ����
		NoticeBoardVO noticeBoard = noticeBoardService.getNoticeBoard(vo);
		// ������ ��ȸ
		NoticeBoardVO prevBoard = noticeBoardService.getPrevBoard(noticeBoard.getSeq());
		// ������ ��ȸ
		NoticeBoardVO nextBoard = noticeBoardService.getNextBoard(noticeBoard.getSeq());
		
		ModelAndView mav = new ModelAndView();
		if(prevBoard != null) {
			mav.addObject("prevBoard", prevBoard);
		}
		if(nextBoard != null) {
			mav.addObject("nextBoard", nextBoard);
		}
		mav.setViewName("/board/noticeDetail");
		mav.addObject("noticeBoard", noticeBoard);
		System.out.println(noticeBoard);
		return mav;
	}
}
