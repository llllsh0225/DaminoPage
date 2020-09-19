package com.damino.web.admin.menu;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.damino.web.admin.board.BoardVO;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/insertMenu_drink.admdo")
	public ModelAndView getAdminInsertMenu_drinkPage() {
		System.out.println("메뉴추가 - 음료 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_drink");
		
		return mav;
	}
	
	@RequestMapping("/insertMenu_pizza.admdo")
	public ModelAndView getAdminInsertMenu_pizzaPage() {
		System.out.println("메뉴추가 - 피자 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_pizza");
		
		return mav;
	}
	
	@RequestMapping("/insertMenu_side.admdo")
	public ModelAndView getAdminInsertMenu_sidePage() {
		System.out.println("메뉴추가 - 사이드디쉬 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_side");
		
		return mav;
	}
	
	@RequestMapping("/insertMenu_topping.admdo")
	public ModelAndView getAdminInsertMenu_toppingPage() {
		System.out.println("메뉴추가 - 토핑 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/insertMenu_topping");
		
		return mav;
	}
	
	/**
	 * 피자 메뉴정보, 영양성분 insert
	 */
	@RequestMapping(value="/insertPizza.admdo", method=RequestMethod.POST)
	public ModelAndView insertPizza(PizzaVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 피자 메뉴, 영양성분 등록");
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods"); // 이미지가 저장될 절대 경로
		
		String p_image = ""; // 실제 저장될 파일명
		String originalFileName = ""; // 사용자가 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			p_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + p_image));
		}
		
		vo.setP_image(p_image);
		vo.setP_originalFileName(originalFileName);
		System.out.println(originalFileName);
		
		menuService.insertPizza(vo);
		mav.setViewName("redirect:/menuList.admdo");
		
		return mav;
	}
	
	@RequestMapping(value="/insertSide.admdo", method=RequestMethod.POST)
	public ModelAndView insertSide(SideVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 사이드 메뉴, 영양성분 등록");
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods"); // 이미지가 저장될 절대 경로
		
		String s_image = ""; // 실제 저장될 파일명
		String originalFileName = ""; // 사용자가 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			originalFileName = uploadFile.getOriginalFilename(); // 업로드한 실제 파일명
			String ext = FilenameUtils.getExtension(originalFileName); // 파일명으로 확장자명 추출
			UUID uuid = UUID.randomUUID(); // uuid 생성
			
			s_image = uuid + "." + ext; // 서버에 저장될 파일명
			uploadFile.transferTo(new File(path + "/" + s_image));
		}
		
		vo.setS_image(s_image);
		vo.setS_originalFileName(originalFileName);
		
		menuService.insertSide(vo);
		mav.setViewName("redirect:/menuSideList.admdo");
		
		return mav;
	}
	
	@RequestMapping(value="/insertDrinkEtc.admdo", method=RequestMethod.POST)
	public ModelAndView insertDrinkEtc(DrinkEtcVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 음료&기타 메뉴 등록");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods");
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
		mav.setViewName("redirect:/menuDrinkEtcList.admdo");
		
		return mav;
	}
	
	@RequestMapping(value="/insertTopping.admdo", method=RequestMethod.POST)
	public ModelAndView insertTopping(ToppingVO vo, ModelAndView mav, HttpServletRequest request) throws IOException{
		System.out.println("Controller ---> 토핑 메뉴 등록");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods");
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
		mav.setViewName("redirect:/menuToppingList.admdo");
		
		return mav;
	}
	
	@RequestMapping(value="/menuList.admdo", method = RequestMethod.GET)
	public ModelAndView getPizzaList() {
		System.out.println("피자 목록");
		List<PizzaVO> pizzaList = menuService.getPizzaList();
		System.out.println(pizzaList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuList");
		mav.addObject("pizzaList", pizzaList);
		return mav;
	}
	
	@RequestMapping(value="/menuToppingList.admdo", method = RequestMethod.GET)
	public ModelAndView getToppingList() {
		System.out.println("토핑 목록");
		List<ToppingVO> toppingList = menuService.getToppingList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuToppingList");
		mav.addObject("toppingList", toppingList);
		
		return mav;
	}
	
	@RequestMapping(value="/menuSideList.admdo", method = RequestMethod.GET)
	public ModelAndView getSideList() {
		System.out.println("사이드 목록");
		List<SideVO> sideList = menuService.getSideList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuSideList");
		mav.addObject("sideList", sideList);
		return mav;
	}
	
	@RequestMapping(value="/menuDrinkEtcList.admdo", method = RequestMethod.GET)
	public ModelAndView getDrinkEtcList() {
		System.out.println("음료&기타 목록");
		List<DrinkEtcVO> drinkList = menuService.getDrinkEtcList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/menu/menuDrinkEtcList");
		mav.addObject("drinkList", drinkList);
		return mav;
	}
	
	
	@RequestMapping("/getPizzaInfo.admdo")
	public ModelAndView getAdminMenuInfoPage(PizzaVO vo, ModelAndView mav) {
		System.out.println("메뉴-피자 정보 페이지 열기");
		
		PizzaVO pizza = menuService.getPizza(vo);
		mav.addObject("pizza", pizza);
		mav.setViewName("/menu/pizzaInfo");
		
		return mav;
	}
	
	@RequestMapping("/getSideInfo.admdo")
	public ModelAndView getAdminSideInfoPage(SideVO vo, ModelAndView mav) {
		System.out.println("메뉴-사이드 정보 페이지 열기");
		
		SideVO side = menuService.getSide(vo);
		mav.addObject("side", side);
		mav.setViewName("/menu/sideInfo");
		
		return mav;
	}
	
	@RequestMapping("/getDrinkEtc.admdo")
	public ModelAndView getAdminDrinkEtcInfoPage(DrinkEtcVO vo, ModelAndView mav) {
		System.out.println("메뉴-사이드 정보 페이지 열기");
		
		DrinkEtcVO drink = menuService.getDrinkEtc(vo);
		mav.addObject("drink", drink);
		mav.setViewName("/menu/drinkInfo");
		
		return mav;
	}
	
	@RequestMapping("/getTopping.admdo")
	public ModelAndView getAdminToppingInfoPage(ToppingVO vo, ModelAndView mav) {
		System.out.println("토핑 정보 페이지 열기");
		
		ToppingVO topping = menuService.getTopping(vo);
		mav.addObject("topping", topping);
		mav.setViewName("/menu/toppingInfo");
		
		return mav;
	}
	
	@RequestMapping(value="/deletePizza.admdo", method = RequestMethod.POST)
	public String deletePizza(PizzaVO vo) {
		System.out.println("피자 삭제");
		menuService.deletePizza(vo);
		return "redirect:menuList.admdo";
	}
	
	@RequestMapping(value="/deleteSide.admdo", method = RequestMethod.POST)
	public String deleteSide(SideVO vo) {
		System.out.println("사이드 삭제");
		menuService.deleteSide(vo);
		return "redirect:menuSideList.admdo";
	}
	
	@RequestMapping(value="/deleteDrinkEtc.admdo", method = RequestMethod.POST)
	public String deleteDrink(DrinkEtcVO vo) {
		System.out.println("음료 삭제");
		menuService.deleteDrinkEtc(vo);
		return "redirect:menuDrinkEtcList.admdo";
	}
	
	@RequestMapping(value="/deleteTopping.admdo", method = RequestMethod.POST)
	public String deleteToping(ToppingVO vo) {
		System.out.println("토핑 삭제");
		menuService.deleteTopping(vo);
		return "redirect:menuToppingList.admdo";
	}

	
	@RequestMapping(value="/updatePizza.admdo", method=RequestMethod.POST) 
	public ModelAndView updatePizza(ModelAndView mav, PizzaVO vo, HttpServletRequest request)throws IOException {
		System.out.println("피자 업데이트");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods"); // 이미지가 저장될 절대 경로
		
		String p_image = ""; // 실제 저장될 파일명
		String originalFileName = ""; // 사용자가 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			p_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + p_image));
			vo.setP_image(p_image);
			vo.setP_originalFileName(originalFileName);
		}

			
		menuService.updatePizza(vo);
		mav.setViewName("redirect:/menuList.admdo");
		return mav;
	}
	

	@RequestMapping(value="/updateSide.admdo", method = RequestMethod.POST)
	public ModelAndView updateSide(ModelAndView mav, SideVO vo, HttpServletRequest request)throws IOException {
		System.out.println("사이드 업데이트");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods"); // 이미지가 저장될 절대 경로
		
		String s_image = ""; // 실제 저장될 파일명
		String originalFileName = ""; // 사용자가 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			s_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + s_image));
			vo.setS_image(s_image);
			System.out.println(vo.getS_image());
			vo.setS_originalFileName(originalFileName);
		}
		
		menuService.updateSide(vo);
		mav.setViewName("redirect:/menuSideList.admdo");
		return mav;
	}
	
	@RequestMapping(value="/updateDrinkEtc.admdo", method = RequestMethod.POST)
	public ModelAndView updateDrink(ModelAndView mav, DrinkEtcVO vo, HttpServletRequest request)throws IOException {
		System.out.println("음료 업데이트");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods"); // 이미지가 저장될 절대 경로
		
		String d_image = ""; // 실제 저장될 파일명
		String originalFileName = ""; // 사용자가 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			d_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + d_image));
			vo.setD_image(d_image);
			vo.setD_originalFileName(originalFileName);
		}
		
		menuService.updateDrinkEtc(vo);
		mav.setViewName("redirect:/menuDrinkEtcList.admdo");
		return mav;
	}
	
	@RequestMapping(value="/updateTopping.admdo", method = RequestMethod.POST)
	public ModelAndView updateTopping(ModelAndView mav, ToppingVO vo, HttpServletRequest request)throws IOException {
		System.out.println("토핑 업데이트");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/admin/goods"); // 이미지가 저장될 절대 경로
		
		String t_image = ""; // 실제 저장될 파일명
		String originalFileName = ""; // 사용자가 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 생성 (file id)
			t_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + t_image));
			vo.setT_image(t_image);
			vo.setT_originalFileName(originalFileName);
		}
		
		menuService.updateTopping(vo);
		mav.setViewName("redirect:/menuToppingList.admdo");
		return mav;
	}
}


