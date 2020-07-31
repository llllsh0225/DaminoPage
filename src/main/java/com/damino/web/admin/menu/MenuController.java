package com.damino.web.admin.menu;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.menu.paging.PizzaPageMaker;
import com.damino.web.admin.menu.paging.PizzaPaging;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	/**
	 * 피자 메뉴정보, 영양성분 insert
	 */
	@RequestMapping(value="/insertPizza.admdo", method=RequestMethod.POST)
	public ModelAndView insertPizza(PizzaVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 피자 메뉴, 영양성분 등록");
		String path = request.getSession().getServletContext().getRealPath("menu_imgs"); // 이미지가 저장될 절대 경로
		
		String p_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String orginalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orginalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			p_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + p_image));
		}
		
		vo.setP_image(p_image);
		
		menuService.insertPizza(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/insertSide.admdo", method=RequestMethod.POST)
	public ModelAndView insertSide(SideVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 사이드 메뉴, 영양성분 등록");
		String path = request.getSession().getServletContext().getRealPath("menu_imgs"); // 이미지가 저장될 절대 경로
		
		String s_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename(); // 업로드한 실제 파일명
			String ext = FilenameUtils.getExtension(originalFileName); // 파일명으로 확장자명 추출
			UUID uuid = UUID.randomUUID(); // uuid 생성
			
			s_image = uuid + "." + ext; // 서버에 저장될 파일명
			uploadFile.transferTo(new File(path + "/" + s_image));
		}
		
		vo.setS_image(s_image);
		menuService.insertSide(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/insertDrinkEtc.admdo", method=RequestMethod.POST)
	public ModelAndView insertDrinkEtc(DrinkEtcVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 음료&기타 메뉴 등록");
		
		String path = request.getSession().getServletContext().getRealPath("menu_imgs");
		String d_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);
			UUID uuid = UUID.randomUUID();
			
			d_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + d_image));
		}
		
		vo.setD_image(d_image);
		menuService.insertDrinkEtc(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/insertTopping.admdo", method=RequestMethod.POST)
	public ModelAndView insertTopping(ToppingVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 토핑 메뉴 등록");
		
		String path = request.getSession().getServletContext().getRealPath("menu_imgs");
		String t_image = "";
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);
			UUID uuid = UUID.randomUUID();
			
			t_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + t_image));
		}
		
		vo.setT_image(t_image);
		menuService.insertTopping(vo);
		mav.setViewName("/menu/menuList");
		
		return mav;
	}
	
	@RequestMapping(value="/menuList.admdo", method = RequestMethod.GET)
	public ModelAndView getPizzaList(PizzaPaging pa) {
		System.out.println("피자 목록");
		List<PizzaVO> pizzaList = menuService.getPizzaList(pa);
		int countPizzaBoard = menuService.countPizzaBoard();
		PizzaPageMaker pizzaPageMaker = new PizzaPageMaker();
		pizzaPageMaker.setPa(pa);
		pizzaPageMaker.setTotalCount(countPizzaBoard);
		System.out.println(pizzaList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuList");
		mav.addObject("pizzaList", pizzaList);
		mav.addObject("countPizzaBoard", countPizzaBoard);
		mav.addObject("pizzaPageMaker", pizzaPageMaker);
		return mav;
	}
}
