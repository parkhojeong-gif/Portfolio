package com.company.mentoring.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface MentoringService {
	
	public List<MentoringVO> getMentoringList(MentoringVO vo); // 멘토링 리스트
	
	public void insertMentoring(MentoringVO vo, HttpServletRequest request) throws IllegalStateException, IOException;
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);

	public List<MentoringVO> mentoringRegisterCheck(MentoringVO vo); // 멘토링 중복 체크
}
