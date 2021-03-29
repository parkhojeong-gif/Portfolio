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
	
	// 전체 멘토리스트 조회
	@RequestMapping("/getMentorList")
	public String wholeSearch(Model model) {
		model.addAttribute("list", mentorMapper.getMentorList());
		return "Mentor/mentorList";
	}
	
	//단건조회
	@RequestMapping("/getMentor")
	public String getMentor(Model model, MentorVO vo) {
		model.addAttribute("list", mentorMapper.getMentor(vo));
		return "Mentor/mentorList";
	}
	
	

	
}
