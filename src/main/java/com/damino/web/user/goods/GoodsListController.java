package com.damino.web.user.goods;

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

@Controller
public class GoodsListController {
	@Autowired
	private GoodsListService goodsListService;
	
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
	
	@RequestMapping("/goodsSideList.do") 
	public ModelAndView getSideList(ModelAndView mav) {
		System.out.println("���̵��� ����Ʈ ����");

		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();

		mav.addObject("goodsSideList", goodsSideList);
		mav.setViewName("/goods/side_list");

		return mav;
	}

	/*
	 * @RequestMapping("/goodsToppingList.do") public ModelAndView
	 * getToppingList(ModelAndView mav) { System.out.println("���� ����Ʈ ����");
	 * 
	 * List<GoodsToppingVO> goodsToppingList = goodsListService.getToppingList();
	 * 
	 * mav.addObject("goodsList", goodsToppingList); mav.setViewName("/goods/list");
	 * 
	 * return mav; }
	 */
	@RequestMapping("/goodsDrinkEtcList.do") 
	public ModelAndView getDrinkEtcList(ModelAndView mav) {
		System.out.println("����&��Ÿ �޴� ����");

		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();

		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		mav.setViewName("/goods/drink_list");

		return mav;
	}
	
	/*
	 * @RequestMapping(value ="/goods/detailSlide.do", method = RequestMethod.GET)
	 * public String goodsDetail(@ModelAttribute GoodsPizzaVO vo) {
	 * 
	 * //���񽺿��� p_code, p_name ���� ��ȸ�ϴ� ���� �����ؾ���
	 * System.out.println("[��ǰ �󼼺��� ȭ�� ���� �õ�] :"); System.out.println("���� �ڵ� : " +
	 * vo.getP_code()); System.out.println("���� �̹��� : " + vo.getP_image());
	 * goodsListService.getUserPizzaGoods(vo); return "redirect:goodslist.do"; }
	 */
	
	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView goView(ModelAndView mav,@ModelAttribute GoodsPizzaVO vo, HttpServletRequest request) {
		System.out.println("����� ���� ���ڸ޴� ����");
		
		String code = vo.getP_code();
		String name = vo.getP_name();
		System.out.println("code" + code);
		System.out.println("name" + name);
		/*
		 * String p_code = (String)params.get("p_code"); String p_name =
		 * (String)params.get("p_name");
		 */
		//System.out.println("p_code" + p_code);
		//String a = vo.setP_code();
		
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);
		System.out.println("�ٿԴ�");
		mav.addObject("goodsDetail", goodsDetail);
		mav.setViewName("/goods/detail001pp");

		return mav;
	}
	
	/*
	 * @RequestMapping("/detail001pp.do") public ModelAndView getDetail001pp() {
	 * System.out.println("��ǰ -�̺�����- ����");
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.setViewName("/goods/detail001pp");
	 * return mav; }
	 */
}
