package com.company.following.service.impl;

import com.company.following.service.FollowingVO;

public interface FollowingMapper {
	
	public void MentorFollow(FollowingVO vo); // 멘토 팔로우 / insert는 리턴값이 void
	public void deleteMentorFollow(FollowingVO vo); // 멘토 팔로우 취소
	public FollowingVO mentorFollowCheck(FollowingVO vo); // 팔로우 중복 확인
	
	
}
