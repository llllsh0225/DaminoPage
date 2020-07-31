package com.damino.web.user.board;

import java.util.List;

import com.damino.web.user.board.paging.Paging;

public interface NoticeBoardService {
	public List<NoticeBoardVO> getNoticeBoardList(Paging pa);//�������� ���
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//�������� �󼼺���
	public int countNoticeBoard();//�������� �Խñ� ��
	public void increaseCnt(NoticeBoardVO vo);//�������� ��ȸ��
}
