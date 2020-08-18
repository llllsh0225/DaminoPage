package com.damino.web.admin.market.orderlist;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardVO;

@Controller
public class StoreOrderListController {
	@Autowired
	private StoreOrderListService storeOrderListService;
	
	@RequestMapping("/orderList.smdo")
	public ModelAndView getOrderListPage(ModelAndView mav) {
		System.out.println("주문 목록 페이지 열기");
		List<StoreOrderListVO> storeorderlist = storeOrderListService.getStoreOrderList();
		
		mav.setViewName("/order/storeOrderList");
		
		
		return mav;
	}
	
	@RequestMapping("/orderSearch.smdo")
	public ModelAndView getOrderSearchPage(ModelAndView mav) {
		System.out.println("주문 검색 페이지 열기");
		List<StoreOrderListVO> storeorderlist = storeOrderListService.getStoreOrderList();
		mav.addObject("storeorderlist", storeorderlist);
		mav.setViewName("/order/storeOrderSearch");
		
		return mav;
	}
	
	@RequestMapping(value="/updateOrderList.smdo", method=RequestMethod.POST)
	@ResponseBody
	public String updateOrderList(@RequestBody Map<String, Object> param, StoreOrderListVO vo) {
		System.out.println("주문상태 수정");
		
		String status = (String)param.get("status");
		String orderseq = (String)param.get("orderseq");
		
		vo.setStatus(status);
		vo.setOrderseq(Integer.parseInt(orderseq));
		
		storeOrderListService.updateOrderList(vo);
		return "success";
	}
}
