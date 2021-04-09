package com.company.mentoring.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.mentor.service.MentorService;
import com.company.mentor.service.MentorVO;
import com.company.mentor.service.impl.MentorMapper;
import com.company.mentoring.service.MentoringService;
import com.company.mentoring.service.MentoringVO;
import com.company.mentoring.service.impl.MentoringMapper;

@Controller
public class MentoringController {
	
	@Autowired MentorService mentorService;
	@Autowired MentoringService mtService;

	
	// 멘토링 검색
	@PostMapping("/getMentorList")
	public String getMentorList(Model model, MentorVO vo) {
		model.addAttribute("list", mentorService.getMentorList(vo));
		return "Mentor/mentorList";
	}
	
	// 멘토링 키워드 검색
	@RequestMapping("/getKeywordSearch")
	public String getKeywordSearch(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		List<MentorVO> list = mentorService.getKeywordSearch(searchKeyword);
		model.addAttribute("list", list);
		return "Mentor/mentorList";
	}
	
	// 멘토링 연령 검색
	@PostMapping("/getAgeSearch")
	public String getAgeSearch(@RequestParam("searchAge") String searchAge, Model model) {
		List<MentorVO> list = mentorService.getAgeSearch(searchAge);
		model.addAttribute("list", list);
		return "Mentor/mentorList";
	}
	
	// 멘토링 지역 검색
	/*
	 * @RequestMapping("/getLocationSearch") public String getLocationSearch(Model
	 * model) { model.addAttribute("list", mentorMapper.getLocationSearch()); return
	 * "Mentor/mentorList"; }
	 */
	
	// 멘토링 등록 페이지
	@RequestMapping("/MentoringRegister")
	public String MentoringRegister(Model model, MentorVO vo) {
		MentorVO mentorRegisterCheck = mentorService.mentorRegisterCheck(vo);
		if(mentorRegisterCheck==null) {
			model.addAttribute("msg", "멘토가 아닙니다. 멘토 등록을 해주세요.");
			model.addAttribute("url", "MentorList");
			return "common/Fail";
		}else {
			model.addAttribute("mentorInfo", mentorRegisterCheck);
			return "Mentoring/MentoringRegister";
		}
	}
	
	// 멘토링 등록 처리
	@RequestMapping("/MentoringRegisterProc")
	public String MentoringRegisterProc(Model model, MentoringVO vo) {
		mtService.MentoringRegisterProc(vo);
		model.addAttribute("msg", "멘토링 등록 완료");
		model.addAttribute("url", "MentorList");
		return "common/Success";
	}
	
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
	
}
