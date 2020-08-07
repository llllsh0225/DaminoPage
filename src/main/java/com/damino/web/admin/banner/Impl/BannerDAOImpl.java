/*
 * package com.damino.web.admin.banner.Impl;
 * 
 * import java.util.List;
 * 
 * import org.mybatis.spring.SqlSessionTemplate; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Repository;
 * 
 * import com.damino.web.admin.banner.BannerDAO; import
 * com.damino.web.admin.banner.BannerVO;
 * 
 * @Repository("bannerDAO") public class BannerDAOImpl implements BannerDAO {
 * 
 * @Autowired private SqlSessionTemplate sqlSessionTemplate;
 * 
 * @Override public void insertBanner(BannerVO vo) {
 * System.out.println("[BannerDAO ���] code :" + vo );
 * sqlSessionTemplate.insert("",vo); }
 * 
 * @Override public List<BannerVO> getBannerList() {
 * System.out.println("[BannerDAO �����ȸ]"); return
 * sqlSessionTemplate.selectList(""); }
 * 
 * @Override public BannerVO getBanner(BannerVO vo) {
 * System.out.println("[BannerDAO ���� ���] code :" + vo ); return
 * sqlSessionTemplate.selectOne("", vo); }
 * 
 * @Override public void updateBanner(BannerVO vo) {
 * System.out.println("[BannerDAO ����] code :" + vo );
 * sqlSessionTemplate.update("",vo); }
 * 
 * @Override public void deleteBanner(BannerVO vo) {
 * System.out.println("[BannerDAO ����] code :" + vo );
 * sqlSessionTemplate.delete("",vo); }
 * 
 * }
 */