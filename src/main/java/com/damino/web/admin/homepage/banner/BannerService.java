package com.damino.web.admin.homepage.banner;

import java.util.List;

public interface BannerService {
	// ����
	public void insertBanner(BannerVO vo);

	// ��� �����ֱ�
	public List<BannerVO> getBannerList();

	// ��� ��������
	public BannerVO getBanner(BannerVO vo);


	// ����
	void updateBanner(BannerVO vo);

	// ����
	void deleteBanner(BannerVO vo);

}
