package com.damino.web.user.goods;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	// ���ּ� �Է� �������� ���� ����� ����Ʈ ��ü
	private List<MarketAdminMemberVO> storeNameList = new ArrayList<MarketAdminMemberVO>();

	@RequestMapping("/goodslist.do")
	public ModelAndView getPizzaList(ModelAndView mav) {
		System.out.println("��ǰ ��� ����");

		List<GoodsPizzaVO> goodsPremiumList = goodsListService.getPizzaList();
		List<GoodsPizzaVO> goodsClassicList = goodsListService.getPizzaClassicList();

		mav.addObject("goodsPremiumList", goodsPremiumList);
		mav.addObject("goodsClassicList", goodsClassicList);

		System.out.println("�����̾� ���� ����Ʈ : " + goodsPremiumList);
		mav.setViewName("/goods/list");

		return mav;
	}

	@RequestMapping(value = "/goodsSideList.do")
	public ModelAndView getSideList(ModelAndView mav) {
		System.out.println("���̵��� ����Ʈ ����");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		mav.addObject("goodsSideList", goodsSideList);
		mav.setViewName("/goods/side_list");

		return mav;
	}

	@RequestMapping("/goodsDrinkEtcList.do")
	public ModelAndView getDrinkEtcList(ModelAndView mav) {
		System.out.println("����&��Ÿ �޴� ����");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/drink_list");

		return mav;
	}

	/** ����� ���� ���� �޴� */
	@RequestMapping("/detail.do")
	public ModelAndView goView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo) {
		System.out.println("����� ���� ���ڸ޴� ����");

		String p_code = request.getParameter("p_code");
		System.out.println("p_code : " + p_code);
		String p_name = request.getParameter("p_name");

		// ����� ���� �޴� ���� ���� ȣ��
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);

		// ���� ��� ���� ȣ��
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();

		// ���̵��� ��� ���� ȣ��
		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		// ���� ��� ���� ȣ��
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// -------����� ���� �޴� ���� �ҷ�����-------------------
		// ���� Ÿ�Ժ� ��� �ҷ�����
		mav.addObject("mainToppingList", mainToppingList);
		mav.addObject("cheezeToppingList", cheezeToppingList);
		mav.addObject("afterToppingList", afterToppingList);

		// ���̵��� ��� �ҷ�����
		mav.addObject("goodsSideList", goodsSideList);

		// ���� ��� �ҷ�����
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);

		// ���� �ҷ�����
		mav.addObject("goodsDetail", goodsDetail);

		// request parameter���� ���� ���� �̸�
		mav.addObject("p_name", p_name);
		mav.setViewName("/goods/detail_goods");

		return mav;
	}

	/** ����� ���� ���� �޴� - �ֹ��ϱ� */
	@RequestMapping(value = "my_basket.do", method = RequestMethod.POST)
	public ModelAndView goView_basket(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo) {
		//���� ��� ���� ȣ��
		List<GoodsPizzaVO> goodsPremiumList = goodsListService.getPizzaList();
		List<GoodsPizzaVO> goodsClassicList = goodsListService.getPizzaClassicList();	
		
		// ���� ��� ���� ȣ��
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();

		// ���̵��� ��� ���� ȣ��
		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		// ���� ��� ���� ȣ��
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();
		// basketdetail.do

		mav.addObject("goodsPremiumList", goodsPremiumList);
		mav.addObject("goodsClassicList", goodsClassicList);
		
		mav.addObject("mainToppingList", mainToppingList);
		mav.addObject("cheezeToppingList", cheezeToppingList);
		mav.addObject("afterToppingList", afterToppingList);
		
		mav.addObject("goodsSideList", goodsSideList);
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		
		mav.setViewName("/basket/basket_detail");
		return mav;
	}

	@RequestMapping(value = "/getStoreRegion.do", method = RequestMethod.POST)
	@ResponseBody
	public String getStoreRegion(@RequestBody Map<String, Object> param) {
		String guName = (String) param.get("guName");
		System.out.println("�� : " + guName);

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
		System.out.println("����� ���� ���̵��� �޴� ����");

		String s_code = request.getParameter("s_code");
		System.out.println("s_code : " + s_code);
		String s_name = request.getParameter("s_name");

		System.out.println("s_name : " + s_name);

		// ����� ���� �޴� ���� ���� ȣ��
		GoodsSideVO goodsDetailSide = goodsListService.getUserSideGoods(vo);

		// ���� ��� ���� ȣ��
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		// -------����� ���� �޴� ���� �ҷ�����-------------------

		// ���� ��� �ҷ�����
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		// ���̵��� �ҷ�����
		mav.addObject("goodsDetailSide", goodsDetailSide);

		mav.setViewName("/goods/detail_goods_side");

		return mav;
	}

}
