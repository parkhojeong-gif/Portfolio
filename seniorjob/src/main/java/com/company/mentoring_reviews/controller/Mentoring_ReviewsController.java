package com.company.mentoring_reviews.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.mentoring_reviews.service.Mentoring_ReviewsVO;
import com.company.mentoring_reviews.service.impl.Mentoring_ReviewsMapper;


@Controller
public class Mentoring_ReviewsController {

	@Autowired Mentoring_ReviewsMapper mentoring_ReviewsMapper;
	@RequestMapping("/mentoringReviews")
	public String mentoringReviews() {
		return "mentoringReviews";		  //멘토링 후기
	}
	@RequestMapping("/getMentoring_ReviewsList")	//후기 리스트
	public String getMentoring_ReviewsList(Model model) {
		model.addAttribute("list", mentoring_ReviewsMapper.getMentoring_ReviewsList());
		return "/Mentoring_Reviews/getMentoring_ReviewsList";
	}
	@RequestMapping("/insertMentoring_Reviews") //후기 등록 폼
	public String insertMentoring_Reviews(Mentoring_ReviewsVO vo) {
		return "/Mentoring_Reviews/insertMentoring_Reviews";
	}
	@RequestMapping("/insertMentoring_Reviews") //후기 등록
	public String insertMentoring_ReviewsProc(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.insertMentoring_Reviews(vo);
		return "redirect:/getMentoring_ReviewsList";
	}
	@RequestMapping("/updateMentoring_Reviews")	//후기 수정폼
	public String updateMentoring_Reviews(Mentoring_ReviewsVO vo, Model model) {
		model.addAttribute("list", mentoring_ReviewsMapper.getMentoring_Reviews(vo));
		return "/Mentoring_Reviews/updateMentoring_Reviews";
	}
	@RequestMapping("/updateMentoring_Reviews")	//후기 수정
	public String updateMentoring_ReviewsProc(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.updateMentoring_Reviews(vo);
		return "redirect:/getMentoring_ReviewsList";
	}
	@RequestMapping("/deleteMentoring_Reviews")	//후기 삭제
	public String deleteMentoring_Reviews(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.deleteMentoring_Reviews(vo);
		return "redirect:/getMentoring_ReviewsList";
	}
}
