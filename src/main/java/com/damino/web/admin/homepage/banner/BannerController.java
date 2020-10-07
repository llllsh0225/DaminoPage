package com.damino.web.admin.homepage.banner;

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

@Controller
public class BannerController {

	@Autowired
	private BannerService bannerService;
	
	
	// -- 배너 등록페이지 --
	@RequestMapping("/bannerBoardEdit.admdo")
	public ModelAndView getAdminBannerBoardEditPage() {
		System.out.println("배너 등록 페이지 열기");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/sites/banner/bannerBoardEdit");
		
		return mav;
	}
	
	
	// -- 배너 등록 --
	@RequestMapping(value ="/insertBanner.admdo" , method=RequestMethod.POST)
	public ModelAndView insertBanner(BannerVO vo, ModelAndView mav, HttpServletRequest request) throws IOException {
		System.out.println("[controller banner] ");
		String path = request.getSession().getServletContext().getRealPath("/resources/images/user/banner") ; // 이미지 저장될 절대 경로
		
		String banner_image ="";  //실제 저장될 파일명
		String orignialFileName =""; //사용자 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			orignialFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orignialFileName); //확장자 구하기
			UUID uuid = UUID.randomUUID(); //file id
			banner_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" +banner_image));
		}
		
		vo.setBanner_image(banner_image);
		vo.setBanner_originalname(orignialFileName);
		System.out.println("[banner_image] : " + banner_image);
		System.out.println("[originalFileName] : " + orignialFileName);
		
		bannerService.insertBanner(vo);
		mav.setViewName("redirect:/bannerBoardView.admdo");
		
		return mav;
		
	}

	// -- 배너 조회--
	@RequestMapping(value="/bannerBoardView.admdo", method = RequestMethod.GET)//get
	public ModelAndView getBannerList() {
		System.out.println("[배너 목록]");
		List<BannerVO> bannerList = bannerService.getBannerList();
		System.out.println(bannerList.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sites/banner/bannerBoardView");
		mav.addObject("bannerList", bannerList);
		return mav;
	}

	// -- 배너 수정페이지 이동 --
	@RequestMapping(value="/getBannerInfo.admdo", method = RequestMethod.GET)
	public ModelAndView getBannerBoardInfoPage(BannerVO vo, ModelAndView mav, HttpServletRequest req) throws IOException {
		System.out.println("배너 정보 페이지 open");
		
		String seq = req.getParameter("banner_seq");
		System.out.println("bannr_seq 확인=" +seq);
		
		BannerVO bannerList = bannerService.getBanner(vo);
		mav.addObject("bannerList", bannerList);
		mav.setViewName("/sites/banner/bannerBoardInfo");
		
		return mav;
	}
	
	// -- 배너 삭제 --
	@RequestMapping(value="/deleteBanner.admdo", method = RequestMethod.POST)
	public String deletebanner(BannerVO vo) {
		System.out.println("배너 삭제 :" + vo); /* 확인용 */
		bannerService.deleteBanner(vo);
		return "redirect:bannerBoardView.admdo";
	}
	
	// -- 배너 수정 --
	@RequestMapping(value="/updateBanner.admdo", method = RequestMethod.POST)
	public ModelAndView updateBanner(ModelAndView mav, BannerVO vo, HttpServletRequest request)throws IOException {
		// -- 기존내용을 유지할때.(A)
		BannerVO originalBanner = bannerService.getBanner(vo);
		// -- (A)여기까지
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images/user/banner"); // 이미지가 저장딜 절대 경로
		
		String banner_image ="";  //실제 저장될 파일명
		String orignialFileName =""; //사용자 업로드한 original 파일명
		MultipartFile uploadFile = vo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			
			orignialFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(orignialFileName); //확장자 구하기
			UUID uuid = UUID.randomUUID(); // uuid(file id) 
			banner_image = uuid + "." + ext;
			uploadFile.transferTo(new File(path + "/" + banner_image));
			vo.setBanner_image(banner_image);
			vo.setBanner_originalname(orignialFileName);
			
		}else if(uploadFile.isEmpty()){
			// -- 기존내용을 유지할때  이미지 유지..(A)
			String originalBannerImage = originalBanner.getBanner_image();
			String originalBannerName = originalBanner.getBanner_originalname();
			vo.setBanner_image(originalBannerImage);
			vo.setBanner_originalname(originalBannerName);
		}
		
		
		System.out.println("[banner_image] : " + banner_image);
		System.out.println("[originalFileName] : " + orignialFileName);
		
		bannerService.updateBanner(vo);
		mav.setViewName("redirect:/bannerBoardView.admdo");
		
		return mav;
	
	}

	
	
}
