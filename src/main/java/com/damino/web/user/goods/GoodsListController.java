package com.damino.web.user.goods;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.market.member.regist.MarketAdminMemberVO;
import com.damino.web.admin.market.member.regist.MarketAdminRegistService;

@Controller
public class GoodsListController {
	@Autowired
	private GoodsListService goodsListService;
	@Autowired
	private MarketAdminRegistService marketAdminRegistService;

	// 상세주소 입력 페이지로 보낼 매장명 리스트 객체
	private List<MarketAdminMemberVO> storeNameList = new ArrayList<MarketAdminMemberVO>();

	@RequestMapping("/goodslist.do")
	public ModelAndView getPizzaList(ModelAndView mav) {
		System.out.println("제품 목록 열기");

		List<GoodsPizzaVO> goodsPremiumList = goodsListService.getPizzaList();
		List<GoodsPizzaVO> goodsClassicList = goodsListService.getPizzaClassicList();

		mav.addObject("goodsPremiumList", goodsPremiumList);
		mav.addObject("goodsClassicList", goodsClassicList);

		System.out.println("프리미엄 피자 리스트 : " + goodsPremiumList);
		mav.setViewName("/goods/list");

		return mav;
	}

	@RequestMapping(value = "/goodsSideList.do")
	public ModelAndView getSideList(ModelAndView mav) {
		System.out.println("사이드디시 리스트 열기");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		mav.addObject("goodsSideList", goodsSideList);
		mav.setViewName("/goods/side_list");

		return mav;
	}

	@RequestMapping("/goodsDrinkEtcList.do")
	public ModelAndView getDrinkEtcList(ModelAndView mav) {
		System.out.println("음료&기타 메뉴 열기");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/drink_list");

		return mav;
	}

	/** 사용자 선택 피자 메뉴 */
	@RequestMapping("/detail.do")
	public ModelAndView goView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo) {
		System.out.println("사용자 선택 피자메뉴 열기");

		String p_code = request.getParameter("p_code");
		System.out.println("p_code : " + p_code);
		String p_name = request.getParameter("p_name");

		// 사용자 선택 메뉴 정보 서비스 호출
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);

		// 토핑 목록 서비스 호출
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();

		// 사이드디시 목록 서비스 호출
		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		// 음료 목록 서비스 호출
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// -------사용자 선택 메뉴 정보 불러오기-------------------
		// 토핑 타입별 목록 불러오기
		mav.addObject("mainToppingList", mainToppingList);
		mav.addObject("cheezeToppingList", cheezeToppingList);
		mav.addObject("afterToppingList", afterToppingList);

		// 사이드디시 목록 불러오기
		mav.addObject("goodsSideList", goodsSideList);

		// 음료 목록 불러오기
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);

		// 피자 불러오기
		mav.addObject("goodsDetail", goodsDetail);

		// request parameter에서 받은 피자 이름
		mav.addObject("p_name", p_name);
		mav.setViewName("/goods/detail_goods");

		return mav;
	}

	/** 사용자 선택 피자 메뉴 - 주문하기 getToppingNames  */
	@RequestMapping(value = "my_basket.do", method = RequestMethod.POST)
	public ModelAndView goView_basket(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo) {
		// 사용자 선택 메뉴 정보 서비스 호출
		//GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);
				
		
		//mav.addObject("goodsDetail", goodsDetail);
		
		mav.setViewName("/basket/basket_detail");
		return mav;
	}
	
	@RequestMapping(value="/getToppingNames.do", method=RequestMethod.POST)
	@ResponseBody
	public List<String> getToppingNames(HttpServletRequest request, @RequestParam(value="t_name[]") List<String> t_name ){
		
		
		//System.out.println("제품 카테고리 : " + t_name);
		
		List<String> t_name_List = new ArrayList<String>();
		
		//List<GoodsToppingVO> toppingList = goodsListService.getUserTopping();
		//System.out.println(t_name);
		
		GoodsToppingVO toppingVO = new GoodsToppingVO();
		/*
		 * GoodsToppingVO toppingVO = new GoodsToppingVO();
		 * 
		 * for(int i=0; i<t_name_List.size(); i++) { toppingVO = t_name.get(i); }
		 */
		//t_name의 길이만큼 배열을 돌려서 vo에 셋팅하고 서비스 호출?
		
		//List<String> t_nameArr = t_name;
		/*
		 * for(int j=0; j<param.size(); j++) { String t_name = param.get(j);
		 * toppingVO.setT_name(t_name); System.out.println("vo가 받은 이름 : " +
		 * toppingVO.getT_name());
		 * 
		 * t_name_List.add(t_name); System.out.println("리스트가 받은 이름 : " + t_name_List); }
		 */
		for(String toppingName : t_name) {
            System.out.println(toppingName);
        }
		//List<GoodsToppingVO> toppingList = goodsListService.getUserTopping();
		//System.out.println("toppingList : " + toppingList);
		/*
		 * List<GoodsToppingVO> toppingList = goodsListService.getUserTopping();
		 * List<String> t_image_list = new ArrayList<String>();
		 * 
		 * GoodsToppingVO toppingVO = new GoodsToppingVO(); //JSONObject jsonObject =
		 * new JSONObject();
		 * 
		 * for(int i=0; i<toppingList.size(); i++) { toppingVO = toppingList.get(i);
		 * //toppingVO.setT_image(t_image); String toppingImage = vo.getT_image();
		 * 
		 * System.out.println(toppingImage); t_image_list.add(toppingImage); }
		 */
		
		return t_name_List;
	}

	@RequestMapping(value = "/getStoreRegion.do", method = RequestMethod.POST)
	@ResponseBody
	public String getStoreRegion(@RequestBody Map<String, Object> param) {
		String guName = (String) param.get("guName");
		System.out.println("구 : " + guName);

		storeNameList = marketAdminRegistService.searchStore(guName);
		System.out.println(storeNameList);

		if (storeNameList.size() != 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping("/openDetailAddress.do")
	public ModelAndView openDetailAddress(ModelAndView mav) {
		mav.addObject("storeNameList", storeNameList);
		mav.setViewName("/basket/detailAddr");
		return mav;
	}

	@RequestMapping("/side.do")
	public ModelAndView goSideView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsSideVO vo) {
		System.out.println("사용자 선택 사이드디시 메뉴 열기");

		String s_code = request.getParameter("s_code");
		System.out.println("s_code : " + s_code);
		String s_name = request.getParameter("s_name");

		System.out.println("s_name : " + s_name);

		// 사용자 선택 메뉴 정보 서비스 호출
		GoodsSideVO goodsDetailSide = goodsListService.getUserSideGoods(vo);

		// 음료 목록 서비스 호출
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// -------사용자 선택 메뉴 정보 불러오기-------------------

		// 음료 목록 불러오기
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		// 사이드디시 불러오기
		mav.addObject("goodsDetailSide", goodsDetailSide);

		mav.setViewName("/goods/detail_goods_side");

		return mav;
	}

}
