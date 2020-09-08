package com.damino.web.admin.banner.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.damino.web.admin.banner.BannerDAO;
import com.damino.web.admin.banner.BannerService;
import com.damino.web.admin.banner.BannerVO;

@Service("bannerService")
public class BannerServiceImpl implements BannerService {

	@Autowired
	private BannerDAO bannerDAO;

	@Override
	public void insertBanner(BannerVO vo) {
		bannerDAO.insertBanner(vo);

	}

	@Override
	public List<BannerVO> getBannerList() {
		return bannerDAO.getBannerList();
	}

	@Override
	public BannerVO getBanner(BannerVO vo) {
		return bannerDAO.getBanner(vo);
	}

	@Override
	public void updateBanner(BannerVO vo) {
		bannerDAO.updateBanner(vo);
	}

	@Override
	public void deleteBanner(BannerVO vo) {
		bannerDAO.deleteBanner(vo);

	}

}
