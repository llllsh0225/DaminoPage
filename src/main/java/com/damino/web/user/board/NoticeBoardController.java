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
		System.out.println("공지사항 목록");
		List<NoticeBoardVO> noticeBoardList = null;
		int countNoticeBoard = 0;
		PageMaker pageMaker = null;
		String gubun = request.getParameter("gubun");

		System.out.println("---> " + gubun);

		if (gubun != null) {
			if (gubun.equals("notice")) {
				System.out.println("카테고리 - 공지사항");
				noticeBoardList = noticeBoardService.getNoticeCategory(pa);
				countNoticeBoard = noticeBoardService.countNoticeCategory();
				pageMaker = new PageMaker();
				pageMaker.setPa(pa);
				pageMaker.setTotalCount(countNoticeBoard);
				pageMaker.setGubun(gubun);
			} else {
				System.out.println("카테고리 - 보도자료");
				noticeBoardList = noticeBoardService.getNewsCategory(pa);
				countNoticeBoard = noticeBoardService.countNewsCategory();
				pageMaker = new PageMaker();
				pageMaker.setPa(pa);
				pageMaker.setTotalCount(countNoticeBoard);
				pageMaker.setGubun(gubun);
			}
		} else {
			noticeBoardList = noticeBoardService.getNoticeBoardList(pa);// 게시글 목록
			countNoticeBoard = noticeBoardService.countNoticeBoard();// 게시글 수
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
		System.out.println("공지사항 목록");

		System.out.println("검색 조건 ---> " + pa.getSearch());
		System.out.println("검색 키워드 ---> " + pa.getConditionTemp());
		
		List<NoticeBoardVO> noticeBoardList = null;
		int countNoticeBoard = 0;
		PageMaker pageMaker = null;

		noticeBoardList = noticeBoardService.getNoticeBoardList(pa);// 게시글 목록
		countNoticeBoard = noticeBoardService.countNoticeBoard();// 게시글 수
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
		System.out.println("공지사항 상세");
		noticeBoardService.increaseCnt(vo, session);// 조회수 증가
		NoticeBoardVO noticeBoard = noticeBoardService.getNoticeBoard(vo);
		// 이전글 조회
		NoticeBoardVO prevBoard = noticeBoardService.getPrevBoard(noticeBoard.getSeq());
		// 다음글 조회
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
