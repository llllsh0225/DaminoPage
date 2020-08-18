package com.damino.web.user.quickorder.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.damino.web.admin.market.MarketVO;
import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;
import com.damino.web.user.quickorder.QuickOrderAddressVO;
import com.damino.web.user.quickorder.QuickOrderDAO;
import com.damino.web.user.quickorder.QuickOrderGoodsVO;

@Repository("quickOrderDAO")
public class QuickOrderDAOImpl implements QuickOrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<QuickOrderGoodsVO> getQuickOrderGoodsList(String userid) {
		System.out.println(userid + "회원의 퀵오더 제품 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getQuickOrderGoodsList", userid);
	}

	@Override
	public List<QuickOrderAddressVO> getQuickOrderAddressList(String userid) {
		System.out.println(userid + "회원의 퀵오더 주소 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getQuickOrderAddressList", userid);
	}
	
	@Override
	public int getGoodsNexRowSeq(String userid) {
		System.out.println(userid + "의 퀵어도 제품테이블 rowseq 중 가장 큰 값 + 1");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getGoodsNextRowSeq", userid);
	}

	@Override
	public int getAddressNexRowSeq(String userid) {
		System.out.println(userid + "의 퀵오더 주소테이블 rowseq 중 가장 큰 값 + 1");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getAddressNextRowSeq", userid);
	}
	
	@Override
	public QuickOrderAddressVO getDefaultDeliveryAddress(String userid) {
		System.out.println("디폴트로 설정된 배달주소 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDefaultDeliveryAddress", userid);
	}
	
	@Override
	public List<PizzaVO> getPizzaNames() {
		System.out.println("피자 제품명 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getPizzaNames");
	}

	@Override
	public PizzaVO getPizzaDough(String p_name) {
		System.out.println("선택 가능 도우 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaDough", p_name);
	}

	@Override
	public List<SideVO> getSideNames() {
		System.out.println("사이드 제품명 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getSideNames");
	}

	@Override
	public List<DrinkEtcVO> getDrinkNames() {
		System.out.println("음료&기타 제품명 리스트 가져오기");
		return sqlSessionTemplate.selectList("QuickOrderDAO.getDrinkNames");
	}

	@Override
	public int getPizzaLPrice(String goodsName) {
		System.out.println("L 사이즈 피자 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaLPrice", goodsName);
	}

	@Override
	public int getDoughPrice(String dough) {
		System.out.println("피자 도우 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDoughPrice", dough);
	}

	@Override
	public int getPizzaMPrice(String goodsName) {
		System.out.println("M 사이즈 피자 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getPizzaMPrice", goodsName);
	}

	@Override
	public int getSidePrice(String goodsName) {
		System.out.println("사이드메뉴 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getSidePrice", goodsName);
	}

	@Override
	public int getDrinkEtcPrice(String goodsName) {
		System.out.println("음료&기타 가격 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getDrinkEtcPrice", goodsName);
	}

	@Override
	public void insertQuickOrderGoods(QuickOrderGoodsVO vo) {
		System.out.println("퀵오더 제품 등록");
		sqlSessionTemplate.insert("QuickOrderDAO.insertQuickOrderGoods", vo);
	}

	@Override
	public void deleteQuickOrderGoods(QuickOrderGoodsVO vo) {
		System.out.println("퀵오더 제품 삭제");
		sqlSessionTemplate.delete("QuickOrderDAO.deleteQuickOrderGoods", vo);
	}

	@Override
	public String getStorePhone(String storeName) {
		System.out.println("배달매장 전화번호 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getStorePhone", storeName);
	}

	@Override
	public void insertQuickOrderAddress(QuickOrderAddressVO vo) {
		System.out.println("퀵오더 주소 정보 등록");
		sqlSessionTemplate.insert("QuickOrderDAO.insertQuickOrderAddress", vo);
	}

	@Override
	public void deleteQuickOrderAddress(QuickOrderAddressVO vo) {
		System.out.println("퀵오더 주소 정보 삭제");
		sqlSessionTemplate.delete("QuickOrderDAO.deleteQuickOrderAddress", vo);
	}

	@Override
	public void setDefaultDeliveryAddress(QuickOrderAddressVO vo) {
		System.out.println("디폴트 배달지 지정");
		sqlSessionTemplate.update("QuickOrderDAO.setDefaultDeliveryAddress", vo);
	}

	@Override
	public void releaseDefaultDeliveryAddress(QuickOrderAddressVO vo) {
		System.out.println("이전 설정된 디폴트 배달지 해제");
		sqlSessionTemplate.update("QuickOrderDAO.releaseDefaultDeliveryAddress", vo);
	}

	@Override
	public MarketVO getBusinessHour(String storename) {
		System.out.println(storename + "점의 영업시간 가져오기");
		return sqlSessionTemplate.selectOne("QuickOrderDAO.getBusinessHour", storename);
	}

	

}
