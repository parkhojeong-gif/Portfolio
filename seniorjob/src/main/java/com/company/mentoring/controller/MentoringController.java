package com.company.mentoring.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.mentor.service.MentorService;
import com.company.mentor.service.MentorVO;
import com.company.mentoring.service.MentoringService;
import com.company.mentoring.service.MentoringVO;

@Controller
public class MentoringController {
	
	@Autowired MentorService mentorService;
	@Autowired MentoringService mtService;

	// 멘토링 검색
	@RequestMapping("/getMentoringList")
	public String getMentorList(Model model, MentoringVO vo) {
		model.addAttribute("list", mtService.getMentoringList(vo));
		return "Mentoring/mentoringList";
	}
	
	// 멘토링 단건조회
	@RequestMapping("/getMentoring")
	public String getMentoring(Model model, MentoringVO vo) {
		model.addAttribute("list", mtService.getMentoring(vo));
		return "Mentoring/getMentoring";
	}
	
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
		model.addAttribute("url", "MentorListForm");
		return "common/Success";
	}
	
	// 멘토링 결제페이지
	@RequestMapping("/mentoringPayForm")
	public String mentoringPayForm() {
		return "Mentoring/mentoringPayForm";
	}
	
	// 멘토링 결제 처리
	@RequestMapping("/mentoringPayProc")
	public String mentoringPayProc() {
		return "Mentoring/mentoringPayForm";
	}
	
	//양소민 추가
	@GetMapping("/getSearchMentoring")   //마이페이지_내가 만든 멘토링
	public String getSearchMentoring(MentoringVO vo, Model model) {
		model.addAttribute("list", mtService.getSearchMentoring(vo));
		return "mypage/mentoringCourse";
	}
	
	@RequestMapping("/requestMentoring")   //마이페이지_내가 만든 멘토링
	public String requestMentoring(String mentorid, String menteeid, String schedule_name, Model model) {
		System.out.println(mentorid);
		System.out.println(menteeid);
		System.out.println(schedule_name);
		model.addAttribute("mentorid", mentorid);
		model.addAttribute("menteeid", menteeid);
		model.addAttribute("schedule_name", schedule_name);
		
		return "mypage/mentoringRequest";
	}
	
	
}
