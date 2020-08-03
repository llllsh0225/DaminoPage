package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;


public interface NoticeBoardDAO {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//�Խñ� ���
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//�Խñ� �󼼺���
	public int countNoticeBoard();//��ü �Խñ� ��
	public void increaseCnt(NoticeBoardVO vo);//��ȸ�� ����
	
}
