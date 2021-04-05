package com.company.mentoring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.mentor.service.MentorVO;
import com.company.mentor.service.impl.MentorMapper;
import com.company.mentoring.service.MentoringService;
import com.company.mentoring.service.MentoringVO;

@Controller
public class MentoringController {
	
	@Autowired MentorMapper mentorMapper;
	@Autowired MentoringService mtService;
	
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
