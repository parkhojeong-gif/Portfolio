package com.company.following.controller;

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

//	--------------------------------------------------------김찬곤-----------------------------------------------------------------------------------------------------
	//팔로우 목록
	@RequestMapping("/following")
	public String following() {
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
	
	// 멘토 팔로우 카운트
	@ResponseBody
	@RequestMapping("getFollowCnt")
	public int getFollowCnt(FollowingVO vo) {
		int result = followService.getFollowCnt(vo);
		return result;
	}
//	--------------------------------------------------------End of 김찬곤-----------------------------------------------------------------------------------------------------	
	
	
}
