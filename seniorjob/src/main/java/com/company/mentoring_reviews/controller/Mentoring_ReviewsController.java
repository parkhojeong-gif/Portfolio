package com.company.mentoring_reviews.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mentoring_ReviewsController {

	@RequestMapping("/mentoringReviews")
	public String mentoringReviews() {
		return "mentoringReviews";		  //멘토링 후기
	}
}
