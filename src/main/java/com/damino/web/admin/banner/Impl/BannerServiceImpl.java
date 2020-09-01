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
		System.out.println("[bannerserviceimpl] insert...");
		bannerDAO.insertBanner(vo);

	}

	@Override
	public List<BannerVO> getBannerList() {
		System.out.println("[bannerserviceimpl] getbannerList()...");
		return bannerDAO.getBannerList();
	}

	@Override
	public BannerVO getBanner(BannerVO vo) {
		System.out.println("[bannerserviceimpl] getBanner...");
		System.out.println(" ´ë»ó : " +vo);
		return bannerDAO.getBanner(vo);
	}

	@Override
	public void updateBanner(BannerVO vo) {
		System.out.println("[bannerserviceimpl] update...");
		bannerDAO.updateBanner(vo);
	}

	@Override
	public void deleteBanner(BannerVO vo) {
		System.out.println("[bannerserviceimpl] delete...");
		bannerDAO.deleteBanner(vo);

	}

}
