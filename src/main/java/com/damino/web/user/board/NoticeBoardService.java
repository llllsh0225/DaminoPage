package com.damino.web.user.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.damino.web.user.board.paging.Paging;

public interface NoticeBoardService {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//�������� ���
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//�������� �󼼺���
	public int countNoticeBoard();//�������� �Խñ� ��
	public void increaseCnt(NoticeBoardVO vo, HttpSession session);//�������� ��ȸ��
	public List<NoticeBoardVO> getNoticeCategory(Paging pa); // �������� ���
	public int countNoticeCategory(); // �������� �Խñ� ��
	public List<NoticeBoardVO> getNewsCategory(Paging pa); // �����ڷ� ���
	public int countNewsCategory(); // �����ڷ� �Խñ� ��
	public NoticeBoardVO getPrevBoard(int seq); // ������ ��ȸ
	public NoticeBoardVO getNextBoard(int seq); // ������ ��ȸ
}
