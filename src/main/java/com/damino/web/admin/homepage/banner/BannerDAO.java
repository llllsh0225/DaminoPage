package com.damino.web.admin.homepage.banner;

import java.util.List;

public interface BannerDAO {
	//삽입
	public void insertBanner(BannerVO vo);
	
	//목록 보여주기
	public List<BannerVO> getBannerList();
	
	//수정할 배너 가져오기
	public BannerVO getBanner(BannerVO vo);

	
	//수정
	void updateBanner(BannerVO vo);
	
	//삭제
	void deleteBanner(BannerVO vo);

}
