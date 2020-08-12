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

	
	@RequestMapping(value = "/detailSlide.do", method = RequestMethod.GET)
	public String goodsDetail(@ModelAttribute GoodsPizzaVO vo) {
		
		// ���񽺿��� p_code, p_name ���� ��ȸ�ϴ� ���� �����ؾ���
		System.out.println("detailSlide.do");
		System.out.println("[��ǰ �󼼺��� ȭ�� ���� �õ�] :");
		System.out.println("���� �ڵ� : " + vo.getP_code());
		System.out.println("���� �̹��� : " + vo.getP_image());
		
		goodsListService.getUserPizzaGoods(vo);
		
		return "redirect:goodslist.do";
	}

	@RequestMapping(value = "/detailAjax.do", method = RequestMethod.GET)
	public String goodsDetailAjax(@ModelAttribute GoodsPizzaVO vo) {

		// ���񽺿��� p_code, p_name ���� ��ȸ�ϴ� ���� �����ؾ���
		System.out.println("[��ǰ �󼼺��� ȭ�� ���� �õ�] :");
		System.out.println("���� �ڵ� : " + vo.getP_code());
		System.out.println("���� �̹��� : " + vo.getP_image());
		
		goodsListService.getUserPizzaGoods(vo);
		
		return "redirect:goodslist.do";
	}
	
	@RequestMapping("/detail.do")
	public ModelAndView goView(ModelAndView mav, HttpServletRequest request, @ModelAttribute GoodsPizzaVO vo) {
		System.out.println("����� ���� ���ڸ޴� ����");

		String p_code = request.getParameter("p_code");
		System.out.println("p_code : " + p_code);
		String p_name = request.getParameter("p_name");
		//String p_image = request.getParameter("p_image");
		
		//����� ���� �޴� ���� ���� ȣ��
		GoodsPizzaVO goodsDetail = goodsListService.getUserPizzaGoods(vo);
		
		//���� ��� ���� ȣ��
		List<GoodsToppingVO> mainToppingList = goodsListService.getMainTopping();
		List<GoodsToppingVO> cheezeToppingList = goodsListService.getCheezeTopping();
		List<GoodsToppingVO> afterToppingList = goodsListService.getAfterTopping();
		
		//���̵��� ��� ���� ȣ��
		List<GoodsSideVO> goodsSideList = goodsListService.getSideList();
		
		//���� ��� ���� ȣ��
		List<GoodsDrinkEtcVO> goodsDrinkEtcList = goodsListService.getDrinkEtcList();
		
	//-------����� ���� �޴� ���� �ҷ�����-------------------
		//���� Ÿ�Ժ� ��� �ҷ�����
		mav.addObject("mainToppingList", mainToppingList);
		mav.addObject("cheezeToppingList", cheezeToppingList);
		mav.addObject("afterToppingList", afterToppingList);
		
		//���̵��� ��� �ҷ�����
		mav.addObject("goodsSideList", goodsSideList);
		
		//���� ��� �ҷ�����
		mav.addObject("goodsDrinkEtcList", goodsDrinkEtcList);
		
		//���� �ҷ�����
		mav.addObject("goodsDetail", goodsDetail);
		
		//request parameter���� ���� ���� �̸�
		mav.addObject("p_name", p_name);
		mav.setViewName("/goods/detail_goods");

		return mav;
	}
	
	@RequestMapping("/usersDough.do")
	public ModelAndView usersDough(ModelAndView mav, @ModelAttribute GoodsPizzaVO vo) {
		
		  System.out.println("���� ���� ���� : " + vo.getP_dough());
		  
		GoodsPizzaVO userDough = goodsListService.getUserDoughGoods(vo);
		  
		mav.addObject("userDough", userDough);
		mav.setViewName("/goods/detail_goods");
		return mav;
	}
	

}
