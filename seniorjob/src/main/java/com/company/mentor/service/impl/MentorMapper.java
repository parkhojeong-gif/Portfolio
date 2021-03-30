package com.company.mentor.service.impl;

import java.util.List;

import com.company.mentor.service.MentorVO;

public interface MentorMapper {
	
	// 검색
	public List<MentorVO> getMentorList(MentorVO vo);
	
	// 키워드 검색
	public List<MentorVO> getKeywordSearch(String searchKeyword);
	
	// 연령 검색
	public List<MentorVO> getAgeSearch();
	
	// 지역 검색
	public List<MentorVO> getLocationSearch();
	
	// 멘토 상세페이지
	public MentorVO getMentor(MentorVO vo);
	
	// 멘토 등록
	

}