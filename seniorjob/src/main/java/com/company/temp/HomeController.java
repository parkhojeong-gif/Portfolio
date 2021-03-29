package com.company.temp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/resumeInsert")
	public String resumeInsert() {
		return "resume/resumeInsert";     // 이력서 등록
	}
	
	@RequestMapping("/resumeList")
	public String resumeList() {
		return "resume/resumeList";  	  // 이력서 조회
	}
	
	@RequestMapping("/certi")
	public String certi() {
		return "resume/certi";			  // 자격증 
	}
	
	@RequestMapping("/portfolio")
	public String portfolio() {
		return "resume/portfolio";		  // 포트폴리오
	}
	@RequestMapping("/selfInfo")
	public String selfInfo() {
		return "resume/selfInfo";		  // 자기소개서
	}
	
	@RequestMapping("/preview")
	public String preview() {
		return "preview";				  //미리보기
	}
	
	@RequestMapping("/resumeUpdate")
	public String resumeUpdate() {
		return "resume/resumeUpdate";	  //이력서 수정
	}
	
	@RequestMapping("/collection")
	public String collection() {
		return "resume/collection";		  //첨삭
	}
	
	@RequestMapping("/following")
	public String following() {
		return "following";				  //팔로우 목록
	}
	
	@RequestMapping("/serviceCenter")
	public String serviceCenter() {
		return "serviceCenter";			  //공지사항
	}
	
	@RequestMapping("/mentoringReviews")
	public String mentoringReviews() {
		return "mentoringReviews";		  //멘토링 후기
	}
	
	@RequestMapping("/seniorTimes")
	public String seniorTimes() {
		return "seniorTimes";		  	  //시니어 타임즈
	}
	
	@RequestMapping("/shopping")
	public String shopping() {
		return "shopping";		  			//장바구니
	}
	
	@RequestMapping("/inquire")
	public String inquire() {
		return "inquire";		  			//문의사항
	}
	
	@RequestMapping("/inquireInsert")
	public String inquireInsert() {
		return "inquireInsert";		  		 //문의사항 등록
	}
	
	@RequestMapping("/inquireList")
	public String inquireList() {
		return "inquireList";		  		 //문의사항 목록
	}
	
	@RequestMapping("/myWriteList")
	public String myWriteList() {
		return "myWriteList";		  		 //문의사항 목록
	}
	

	
	
	
	@RequestMapping("/businessPlanInsert")
	public String businessPlanInsert() {
		return "businessPlanInsert";
	}
	
	@RequestMapping("/businessPlanList")
	public String businessPlanList() {
		return "businessPlanList";
	}
	
	@RequestMapping("/mentoringStatus")
	public String mentoringStatus() {
		return "mentoringStatus";
	}
	
	@RequestMapping("/profileModification")
	public String profileModification() {
		return "profileModification";
	}
	
	@RequestMapping("/pwNotFound")
	public String pwNotFound() {
		return "pwNotFound";
	}
	
}
