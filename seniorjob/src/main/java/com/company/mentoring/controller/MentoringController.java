package com.company.mentoring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.mentor.service.impl.MentorMapper;

@Controller
public class MentoringController {
	
	@Autowired MentorMapper mentorMapper;
	
	// 검색
	@PostMapping("/getMentorList")
	public String wholeSearch(@RequestParam("mentoring_location") String mentoring_location,
								@RequestParam("mentor_duty") String mentor_duty ,Model model) {
		model.addAttribute("list", mentorMapper.getMentorList());
		model.addAttribute("mentoring_location", mentoring_location);
		model.addAttribute("mentor_duty", mentor_duty);
		return "Mentor/mentorList";
	}
	
	// 키워드 검색
	@RequestMapping("/getKeywordSearch")
	public String getKeywordSearch(Model model) {
		model.addAttribute("list", mentorMapper.getKeywordSearch());
		return "Mentor/mentorList";
	}
	

	
}
