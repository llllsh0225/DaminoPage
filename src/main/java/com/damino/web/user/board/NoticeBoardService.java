package com.damino.web.user.board;

import java.util.List;

public interface NoticeBoardService {
	public List<NoticeBoardVO> getNoticeBoardList(NoticePagingVO vo);//�������� ���
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//�������� �󼼺���
	public int countNoticeBoard();//�������� �Խñ� ��
	public void increaseCnt(NoticeBoardVO vo);//�������� ��ȸ��
}
