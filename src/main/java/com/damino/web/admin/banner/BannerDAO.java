package com.damino.web.admin.banner;

import java.util.List;

public interface BannerDAO {
	//����
	public void insertBanner(BannerVO vo);
	
	//��� �����ֱ�
	public List<BannerVO> getBannerList();
/*	
	//��� ��������
	public BannerVO getBanner(BannerVO vo);
	
	//����
	void updateBanner(BannerVO vo);
	
	//����
	void deleteBanner(BannerVO vo);
*/
}
