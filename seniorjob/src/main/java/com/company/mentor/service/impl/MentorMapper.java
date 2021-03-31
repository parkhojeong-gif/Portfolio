package com.company.mentor.service.impl;

import java.util.List;

import com.company.mentor.service.MentorVO;

public interface MentorMapper {
	
	
	public List<MentorVO> MentorList(); // 멘토 리스트 페이지 호출
	
	public List<MentorVO> getMentorList(MentorVO vo); // 검색
	public List<MentorVO> getKeywordSearch(String searchKeyword); // 키워드 검색
	public List<MentorVO> getAgeSearch(String searchAge); // 연령 검색
 	
	public List<MentorVO> getMentor(MentorVO vo); // 멘토 상세페이지
	
	public void MentorRegisterProc(MentorVO vo); // 멘토 등록
	public MentorVO mentorRegisterCheck(MentorVO vo); // 멘토 등록 중복 체크
	
	

}
