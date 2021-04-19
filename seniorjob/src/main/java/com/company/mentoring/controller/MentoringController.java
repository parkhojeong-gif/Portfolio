package com.company.mentoring.controller;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.mentor.service.MentorService;
import com.company.mentor.service.MentorVO;
import com.company.mentoring.service.MentoringService;
import com.company.mentoring.service.MentoringVO;
import com.company.shopping.service.ShoppingService;
import com.company.shopping.service.ShoppingVO;
import com.company.users.service.UsersService;
import com.company.users.service.UsersVO;


@Controller
public class MentoringController {
	
	@Autowired MentorService mentorService;
	@Autowired MentoringService mtService;
	@Autowired UsersService usersService;
	@Autowired ShoppingService shoppingService;
	
//	--------------------------------------------------------김찬곤-----------------------------------------------------------------------------------------------------

	// 멘토링 검색
	@RequestMapping("/getMentoringList")
	public String getMentorList(Model model, MentoringVO vo) {
		model.addAttribute("list", mtService.getMentoringList(vo));
		return "Mentoring/mentoringList";
	}
	
	// 멘토링 키워드 검색
	@RequestMapping("/getKeywordMentoring")
	public String getKeywordMentoring(Model model, MentoringVO vo) {
		model.addAttribute("list", mtService.getKeywordMentoring(vo));
		return "Mentoring/mentoringList"; 
	}
	
	// 멘토링 단건조회
	@RequestMapping("/getMentoringChanGon")
	public String getMentoring(Model model, MentoringVO mtVo, MentorVO mVo) {
		model.addAttribute("mentoring", mtService.getMentoring(mtVo));
		model.addAttribute("mentor",mentorService.getMentor(mVo));
		return "Mentoring/getMentoring";
	}
	
	// 멘토링 등록 페이지
	@RequestMapping("/MentoringRegister")
	public String MentoringRegister(Model model, MentorVO vo) {
		MentorVO mentorRegisterCheck = mentorService.mentorRegisterCheck(vo);
		if(mentorRegisterCheck==null) {
			model.addAttribute("msg", "멘토가 아닙니다. 멘토 등록을 해주세요.");
			model.addAttribute("url", "getMentorList");
			return "common/Fail";
		}else {
			model.addAttribute("mentorInfo", mentorRegisterCheck);
			return "Mentoring/MentoringRegister";
		}
	}
	
	// 멘토링 등록 처리
	@RequestMapping("/mentoringRegisterCheck")
	public String mentoringRegisterCheck(Model model, MentoringVO vo, HttpServletRequest request) throws IllegalStateException, IOException {
			mtService.insertMentoring(vo, request);
			model.addAttribute("msg", "멘토링 등록 완료");
			model.addAttribute("url", "getMentorList");
			return "common/Success";
	}
	
	// 멘토링 미리보기 페이지 호출
	@RequestMapping("/mentoringPreview")
	public String mentoringPreviewForm() {
		return "Mentoring/mentoringPreview";
	}
	
	// 멘토링 미리보기 페이지 호출용
	@RequestMapping("/MentoringRegisterForm")
	public String MentoringRegisterForm() {
		return "Mentoring/MentoringRegister";
	}
	
	// 멘토링 결제페이지
	@RequestMapping("/mentoringPayForm")
	public String mentoringPayForm(Model model, MentoringVO mtrVo, MentorVO mVo, ShoppingVO sVo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		UsersVO users = (UsersVO) session.getAttribute("users");
		if(users != null) {
			model.addAttribute("users",users); // 세션 정보
			model.addAttribute("mentoring", mtService.getSearchMentoringChanGon(mtrVo)); // 멘토링 정보
			model.addAttribute("mentor", mentorService.getMentor(mVo)); // 멘토 정보
		}else {
			model.addAttribute("msg", "로그인한 사용자만 이용가능합니다.");
			model.addAttribute("url", "getMentorList");
			return "common/Fail"; 
		}
		
		return "Mentoring/mentoringPayForm";
	}
	
	// 멘토링 결제 처리
	@ResponseBody
	@RequestMapping("/mentoringPayProc")
	public int mentoringPayProc(ShoppingVO vo) {
		int result = shoppingService.BasketCheck(vo);
		if(result==0) { // 테이블에 값이 없으면(장바구니에 없으면)
			shoppingService.mentoringPayProc(vo); // Insert
			return result;
		}else { // 테이블에 값이 있으면(장바구니에 있으면)
			// Cart 삭제
			shoppingService.mentoringPayProc(vo); // Insert
			return result;
		}
	}
	
	// 결제 완료 페이지 호출
	@RequestMapping("/PaymentSuccessForm")
	public String PaymentSuccess(Model model, ShoppingVO vo) {
		model.addAttribute("shopping", shoppingService.getPayInfo(vo));
		return "Mentoring/PaymentSuccess";
	}
	
	// 멘토링 개수
	@ResponseBody
	@RequestMapping("getMentoringCnt")
	public int getMentoringCnt(MentoringVO vo) {
		int result = mtService.getMentoringCnt(vo);
		return result;
	}
	
	// 멘토링 리스트 윈도우
	@RequestMapping("/mentoringListWindow")
	public String mentoringListWindow(MentoringVO mtVo, MentorVO mVo, Model model) {
		model.addAttribute("mentoring", mtService.getMentoring(mtVo));
		model.addAttribute("mentor",mentorService.getMentor(mVo));
		return "Mentoring/mentoringListWindow";
	}
	
	// 멘토링 단건 조회_김찬곤
	@RequestMapping("/getSearchMentoringChanGon")
	public String getSearchMentoringChanGon(MentoringVO mtVo,MentorVO mVo, Model model) {
		model.addAttribute("mentoring", mtService.getSearchMentoringChanGon(mtVo));
		model.addAttribute("mentor",mentorService.getMentor(mVo));
		return "Mentoring/getMentoring";
	}
	
//	--------------------------------------------------------End of 김찬곤-----------------------------------------------------------------------------------------------------
	
	//양소민 추가
	@GetMapping("/getSearchMentoring")   //마이페이지_내가 만든 멘토링
	public String getSearchMentoring(MentoringVO vo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");  //로그인 시 session에 저장된 id값을 꺼내옴.
		vo.setId(id);									
		model.addAttribute("list", mtService.getSearchMentoring(vo)); 
		return "mypage/mentoringCourse";
	}
	
	@RequestMapping("/requestMentoring")   //멘토링 일정 요청 
	public String requestMentoring(String mentorid, String menteeid, String schedule_name, Model model) {
		System.out.println(mentorid);
		System.out.println(menteeid);
		System.out.println(schedule_name);
		model.addAttribute("mentorid", mentorid);
		model.addAttribute("menteeid", menteeid);
		model.addAttribute("schedule_name", schedule_name);
		
		return "mypage/mentoringRequest";
	}
	
	@GetMapping("/getMentoring") //멘토링 상세 페이지
	public String getMentoring(MentoringVO vo, Model model) {
		model.addAttribute("md", mtService.getMentoring(vo));
		return "Mentoring/getMentoring";
	}
	
	@GetMapping("updateMentoringForm") //멘토링 수정 페이지로 이동
	public String updateMentoringForm(Model model, MentoringVO vo) {
		mtService.getMentoringDetail(vo);
		model.addAttribute("menDetail", mtService.getMentoringDetail(vo));
		
		return "/Mentoring/updateMentoringForm";
		
	}
	
	@PostMapping("/updateMentoring") //멘토링 수정 처리
	public String updateMentoring(MentoringVO vo, HttpServletRequest request) {
		mtService.updateMentoring(vo);
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");  //로그인 시 session에 저장된 id값을 꺼내옴.
		vo.setId(id);
		return "redirect:/getSearchMentoring";
		
	}
	
	
}
