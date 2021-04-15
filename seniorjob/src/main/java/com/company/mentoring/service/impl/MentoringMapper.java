package com.company.mentoring.service.impl;

import java.util.List;

import com.company.mentoring.service.MentoringVO;

public interface MentoringMapper {
	
	public List<MentoringVO> getMentoringList(MentoringVO vo); // 멘토링 리스트
	
	public void insertMentoring(MentoringVO vo);
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);

	public List<MentoringVO> mentoringRegisterCheck(MentoringVO vo); // 멘토링 중복 체크
}