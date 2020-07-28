package com.damino.web.user.board;

import java.util.List;

public interface NoticeBoardDAO {
	public List<NoticeBoardVO> getNoticeBoardList();
	public NoticeBoardVO getNoticeBoard(NoticeBoardVO vo);
}
