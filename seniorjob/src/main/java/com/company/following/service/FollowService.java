package com.company.following.service;

public interface FollowService {
	public int MentorFollow(FollowingVO vo); // 멘토 팔로우 / insert는 리턴값이 void
	public int mentorFollowCheck(FollowingVO vo); // 팔로우 중복 확인
	public int deleteMentorFollow(FollowingVO vo); // 멘토 팔로우 취소
	public int getFollowCnt(FollowingVO vo); // 멘토 팔로우 카운트
}
