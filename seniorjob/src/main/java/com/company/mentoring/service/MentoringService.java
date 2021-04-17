package com.company.mentoring.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface MentoringService {
	
	public List<MentoringVO> getMentoringList(MentoringVO vo); // 硫섑넗留� 由ъ뒪�듃
	public List<MentoringVO> getKeywordMentoring(MentoringVO vo); // 멘토링 키워드 검색
	
	public void insertMentoring(MentoringVO vo, HttpServletRequest request) throws IllegalStateException, IOException;
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public List<MentoringVO> getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);

	public List<MentoringVO> mentoringRegisterCheck(MentoringVO vo); // 硫섑넗留� 以묐났 泥댄겕
	
	public int getMentoringCnt(MentoringVO vo); // 진행중인 멘토링 카운트 
}
