package com.damino.web.user.board.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.user.board.NoticeBoardDAO;
import com.damino.web.user.board.NoticeBoardService;
import com.damino.web.user.board.NoticeBoardVO;

@Service("noticeBoardService")
public class NoticeBoardServiceImpl implements NoticeBoardService {
	@Autowired
	private NoticeBoardDAO noticeBoardDAO;
	
	//�������� ��ü���
	@Override
	public List<NoticeBoardVO> getNoticeBoardList() {
		System.out.println("NoticeBoardServiceImpl getNoticeBoardList()");
		return noticeBoardDAO.getNoticeBoardList();
	}
	
	//�������� �󼼺���
	@Override
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo) {

		System.out.println("NoticeBoardServiceImpl getNoticeBoard(vo)");
		return noticeBoardDAO.getNoticeBoard(vo);
	}
	
	//�������� ��ü �Խñ� �� 
	@Override
	public int countNoticeBoard() {
		System.out.println("NoticeBoardServiceImpl countNoticeBoard()");
		return noticeBoardDAO.countNoticeBoard();
	}

	
	
}
