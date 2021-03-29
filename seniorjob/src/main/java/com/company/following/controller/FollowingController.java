package com.company.following.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FollowingController {

	@RequestMapping("/following")
	public String following() {
		return "following";				  //팔로우 목록
	}
}
