package com.company.following.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.following.service.FollowService;
import com.company.following.service.FollowingVO;
@Service
public class FollowServiceImpl implements FollowService{
	
	@Autowired FollowingMapper followMapper;

	// 멘토 팔로우 / insert는 리턴값이 void
	
	public int MentorFollow(FollowingVO vo) {
		int result = followMapper.MentorFollow(vo);
		return result;
	}
	// 멘토 팔로우 취소
	public int deleteMentorFollow(FollowingVO vo) {
		int result = followMapper.deleteMentorFollow(vo);
		return result;
	}
	// 팔로우 중복 확인
	public int mentorFollowCheck(FollowingVO vo) {
		int result = followMapper.mentorFollowCheck(vo);
		return result;
	}

}
