package com.damino.web.user.board;

import java.util.List;


public interface NoticeBoardDAO {
	public List<NoticeBoardVO> getNoticeBoardList(NoticePagingVO vo);//�Խñ� ���
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);//�Խñ� �󼼺���
	public int countNoticeBoard();//��ü �Խñ� ��
	public void increaseCnt(NoticeBoardVO vo);//��ȸ�� ����
	
}
