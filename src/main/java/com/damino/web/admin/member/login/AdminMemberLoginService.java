package com.damino.web.admin.member.login;

import java.util.List;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;

public interface AdminMemberLoginService {
	public AdminMemberLoginVO login(AdminMemberLoginVO vo);

	//매장 관리자 리스트 불러오기
	public List<MarketAdminMemberVO> marketAdminList();
	
	//매장관리자 승인 상태 변경
	public void changeCheckMem(MarketAdminMemberVO vo);
	
	//매장관리자 삭제
	public void marketMemDel(MarketAdminMemberVO vo);
	
	 //매장관리자 정보 조회
	public MarketAdminMemberVO marketMemView(MarketAdminMemberVO vo);
	
	//매장관리자 비밀번호 변경
	public void changeManagerPasswd(MarketAdminMemberVO vo);
		
}
