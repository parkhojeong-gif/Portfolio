package com.company.following.service;

public interface FollowService {
	public void MentorFollow(FollowingVO vo); // 멘토 팔로우 / insert는 리턴값이 void
	public void deleteMentorFollow(FollowingVO vo); // 멘토 팔로우 취소
	public FollowingVO mentorFollowCheck(FollowingVO vo); // 팔로우 중복 확인
}
