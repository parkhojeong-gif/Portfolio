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

@Controller
public class MentoringController {
	
	@Autowired MentorMapper mentorMapper;
	
	// 검색
	@PostMapping("/getMentorList")
	public String getMentorList(Model model, MentorVO vo) {
		model.addAttribute("list", mentorMapper.getMentorList(vo));
		return "Mentor/mentorList";
	}
	
	// 키워드 검색
	@RequestMapping("/getKeywordSearch")
	public String getKeywordSearch(@RequestParam("searchKeyword") String searchKeyword, Model model) {
		List<MentorVO> list = mentorMapper.getKeywordSearch(searchKeyword);
		model.addAttribute("list", list);
		return "Mentor/mentorList";
	}
	
	// 연령 검색
	@RequestMapping("/getAgeSearch")
	public String getAgeSearch(Model model, MentorVO vo) {
		model.addAttribute("list", mentorMapper.getAgeSearch(vo));
		return "Mentor/mentorList";
	}
	
	// 지역 검색
	@RequestMapping("/getLocationSearch")
	public String getLocationSearch(Model model) {
		model.addAttribute("list", mentorMapper.getLocationSearch());
		return "Mentor/mentorList";
	}

	
}
