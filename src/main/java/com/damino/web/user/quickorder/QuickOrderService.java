package com.damino.web.user.quickorder;

import java.util.List;

import com.damino.web.admin.menu.DrinkEtcVO;
import com.damino.web.admin.menu.PizzaVO;
import com.damino.web.admin.menu.SideVO;

public interface QuickOrderService {
	public List<QuickOrderGoodsVO> getQuickOrderGoodsList(String userid); // userid에 해당하는 퀵오더 제품 리스트 가져오기
	public List<QuickOrderAddressVO> getQuickOrderAddressList(String userid); // userid에 해당하는 퀵오더 주소 리스트 가져오기
	public int getGoodsNexRowSeq(String userid); // userid에 해당하는 퀵오더 rowseq 중 가장 큰 값에서 +1
	public int getAddressNexRowSeq(String userid); // userid에 해당하는 퀵오더 주소 rowseq 중 가장 큰 값에서 +1
	public QuickOrderAddressVO getDefaultDeliveryAddress(String userid); // 디폴트로 설정된 배달주소 가져오기
	
	public List<PizzaVO> getPizzaNames(); // 퀵오더 셀렉트박스 피자제품명 리스트 가져오기
	public List<SideVO> getSideNames(); // 퀵오더 셀렉트박스 사이드제품명 리스트 가져오기
	public List<DrinkEtcVO> getDrinkNames(); // 퀵오더 셀렉트박스 음료&기타 제품명 리스트 가져오기
	public PizzaVO getPizzaDough(String p_name); // 제품명에 해당하는 선택 가능 도우 가져오기
	
	public int getPizzaLPrice(String goodsName); // L 사이즈 피자 가격 가져오기
	public int getPizzaMPrice(String goodsName); // M 사이즈 피자 가격 가져오기
	public int getDoughPrice(String dough); // 선택된 피자 도우 가격 가져오기
	public int getSidePrice(String goodsName); // 사이드메뉴 가격 가져오기
	public int getDrinkEtcPrice(String goodsName); // 음료&기타 가격 가져오기
	
	public void insertQuickOrderGoods(QuickOrderGoodsVO vo); // 퀵오더 제품 insert
	public void deleteQuickOrderGoods(QuickOrderGoodsVO vo); // 퀵오더 제품 delete
	
	public String getStorePhone(String storeName); // 배달매장의 전화번호 정보 가져오기
	public void insertQuickOrderAddress(QuickOrderAddressVO vo); // 퀵오더 주소정보 insert
	public void deleteQuickOrderAddress(QuickOrderAddressVO vo); // 퀵오더 주소정보 delete
	
	public void setDefaultDeliveryAddress(QuickOrderAddressVO vo); // 디폴트 배달지 설정
	public void releaseDefaultDeliveryAddress(QuickOrderAddressVO vo); // 이전 설정된 디폴트 배달지 해제
}
