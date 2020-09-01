package com.damino.web.admin.banner.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.banner.BannerDAO;
import com.damino.web.admin.banner.BannerVO;

@Repository("bannerDAO")
public class BannerDAOImpl implements BannerDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertBanner(BannerVO vo) {
		System.out.println("[BannerDAO 등록] code :" + vo);
		sqlSessionTemplate.insert("BannerDAO.insertBanner", vo);
	}

	@Override
	public List<BannerVO> getBannerList() {
		System.out.println("[BannerDAO 목록조회]");
		return sqlSessionTemplate.selectList("BannerDAO.getBannerList");
	}

	@Override
	public BannerVO getBanner(BannerVO vo) {
		System.out.println("[BannerDAO 수정 등록] code :" + vo);
		return sqlSessionTemplate.selectOne("BannerDAO.getBanner", vo);
	}

	@Override
	public void updateBanner(BannerVO vo) {
		System.out.println("[BannerDAO 수정] code :" + vo);
		sqlSessionTemplate.update("BannerDAO.updateBanner", vo);
	}

	@Override
	public void deleteBanner(BannerVO vo) {
		System.out.println("[BannerDAO 삭제] code :" + vo);
		sqlSessionTemplate.delete("BannerDAO.deleteBanner", vo);
	}

}
