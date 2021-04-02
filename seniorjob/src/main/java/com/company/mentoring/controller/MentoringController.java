package com.company.mentoring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.mentor.service.MentorVO;
import com.company.mentor.service.impl.MentorMapper;
import com.company.mentoring.service.MentoringVO;
import com.company.mentoring.service.impl.MentoringMapper;

@Controller
public class MentoringController {
	
	@Autowired MentorMapper mentorMapper;
	@Autowired MentoringMapper mentoringMapper;
	
	// 멘토링 검색
	@PostMapping("/getMentorList")
	public String getMentorList(Model model, MentorVO vo) {
		model.addAttribute("list", mentorMapper.getMentorList(vo));
		return "Mentor/mentorList";
	}
	
	// 멘토링 키워드 검색
	@RequestMapping("/getKeywordSearch")
	public String getKeywordSearch(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		List<MentorVO> list = mentorMapper.getKeywordSearch(searchKeyword);
		model.addAttribute("list", list);
		return "Mentor/mentorList";
	}
	
	// 멘토링 연령 검색
	@PostMapping("/getAgeSearch")
	public String getAgeSearch(@RequestParam("searchAge") String searchAge, Model model) {
		List<MentorVO> list = mentorMapper.getAgeSearch(searchAge);
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
		MentorVO mentorRegisterCheck = mentorMapper.mentorRegisterCheck(vo);
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
		mentoringMapper.MentoringRegisterProc(vo);
		model.addAttribute("msg", "멘토링 등록 완료");
		model.addAttribute("url", "MentorList");
		return "common/Success";
	}
	

	
}
