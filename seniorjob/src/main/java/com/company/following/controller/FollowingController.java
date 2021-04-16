package com.company.following.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.following.service.FollowService;
import com.company.following.service.FollowingVO;

@Controller
public class FollowingController {

	@Autowired FollowService followService;
	
	//팔로우 목록
	@RequestMapping("/following")
	public String following(HttpServletRequest req, FollowingVO vo, Model model) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		vo.setId(id);
		model.addAttribute("list", followService.getMentorList(vo));
		return "following";				  
	}
	
	// 멘토 팔로우
	@ResponseBody
	@RequestMapping("/mentorFollowCheck")
	public int mentorFollowCheck(FollowingVO vo) {
		int result = followService.mentorFollowCheck(vo);
		if(result == 0) {
			followService.MentorFollow(vo);
			return result;
		}else {
			return result;
		}
	}
	
	// 멘토 팔로우 취소
	@ResponseBody
	@RequestMapping("/deleteMentorFollow")
	public int deleteMentorFollow(FollowingVO vo) {
		int result = followService.deleteMentorFollow(vo);
		return result;
	}
	
	
	
}
