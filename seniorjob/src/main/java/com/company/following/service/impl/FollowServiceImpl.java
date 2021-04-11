package com.company.following.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.following.service.FollowService;
import com.company.following.service.FollowingVO;
@Service
public class FollowServiceImpl implements FollowService{
	
	@Autowired FollowingMapper followMapper;

	// 멘토 팔로우 / insert는 리턴값이 void
	@Override
	public void MentorFollow(FollowingVO vo) {
		
	}

	// 멘토 팔로우 취소
	@Override
	public void deleteMentorFollow(FollowingVO vo) {
		
	}

	// 팔로우 중복 확인
	@Override
	public FollowingVO mentorFollowCheck(FollowingVO vo) {
		return followMapper.mentorFollowCheck(vo);
	}

}
