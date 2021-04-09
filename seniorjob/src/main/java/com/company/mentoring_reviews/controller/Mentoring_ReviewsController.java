package com.company.mentoring_reviews.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import com.company.mentoring_reviews.service.Mentoring_ReviewsVO;
import com.company.mentoring_reviews.service.impl.Mentoring_ReviewsMapper;


@Controller
public class Mentoring_ReviewsController {

	@Autowired Mentoring_ReviewsMapper mentoring_ReviewsMapper;
	
	@RequestMapping("/mentoringReviews")
	public String mentoringReviews(Mentoring_ReviewsVO vo, Model model) {
		model.addAttribute("list", mentoring_ReviewsMapper.getMenReview(vo));
		return "/mentoringReviews/mentoringReviews";		  //멘토링 후기 (전체조회)
	}
	@RequestMapping("/getSearchMenReview")	//후기 리스트 (단건조회)
	public String getSearchMenReview(Mentoring_ReviewsVO vo, Model model) {
		model.addAttribute("menslist", mentoring_ReviewsMapper.getSearchMenReview(vo));
		return "/mentoringReviews/menReviewsinsert";
	}
	@RequestMapping("/insertMenReviews") //후기 등록 
	public String insertMenReviews(Mentoring_ReviewsVO vo) {
		return "/Mentoring_Reviews/mentoringRevUpdate";
	}
	@RequestMapping("/insertMenReviewsProc") //후기 등록 프록
	public String insertMentoring_ReviewsProc(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.insertMenReview(vo);
		return "redirect:/mentoringReviews";
	}
	@RequestMapping("/updateMenReviews")	//후기 수정
	public String updateMenReviews(Mentoring_ReviewsVO vo, Model model) {
		model.addAttribute("menslist", mentoring_ReviewsMapper.getSearchMenReview(vo));
		return "/Mentoring_Reviews/mentoringRevUpdate";
	}
	@RequestMapping("/updateMenReviewsProc")	//후기 수정 프록
	public String updateMentoring_ReviewsProc(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.updateMenReview(vo);
		return "redirect:/getMentoring_ReviewsList";
	}
	@RequestMapping("/deleteMenReviews")	//후기 삭제
	public String deleteMentoring_Reviews(Mentoring_ReviewsVO vo) {
		mentoring_ReviewsMapper.deleteMenReview(vo);
		return "redirect:/getMentoring_ReviewsList";
	}
	

	
}
