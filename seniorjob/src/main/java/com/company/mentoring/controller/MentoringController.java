package com.company.mentoring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.mentor.service.MentorVO;
import com.company.mentor.service.impl.MentorMapper;

@Controller
public class MentoringController {
	
	@Autowired MentorMapper mentorMapper;
	
	// 검색
	@RequestMapping("/getMentorList")
	public String wholeSearch(Model model, MentorVO vo) {
		
		model.addAttribute("list", mentorMapper.getMentorList(vo));
		return "Mentor/mentorList";
	}
	
	// 키워드 검색
	@RequestMapping("/getKeywordSearch")
	public String getKeywordSearch(Model model) {
		model.addAttribute("list", mentorMapper.getKeywordSearch());
		return "Mentor/mentorList";
	}
	

	
}
