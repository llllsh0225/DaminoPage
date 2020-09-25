package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;


public interface NoticeBoardDAO {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//�Խñ� ���
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//�Խñ� �󼼺���
	public int countNoticeBoard();//��ü �Խñ� ��
	public void increaseCnt(NoticeBoardVO vo);//��ȸ�� ����
	public List<NoticeBoardVO> getNoticeCategory(Paging pa); // �������� ���
	public int countNoticeCategory(); // �������� �Խñ� ��
	public List<NoticeBoardVO> getNewsCategory(Paging pa); // �����ڷ� ���
	public int countNewsCategory(); // �����ڷ� �Խñ� ��
	public NoticeBoardVO getPrevBoard(int seq); // ������ ��ȸ
	public NoticeBoardVO getNextBoard(int seq); // ������ ��ȸ
} 
