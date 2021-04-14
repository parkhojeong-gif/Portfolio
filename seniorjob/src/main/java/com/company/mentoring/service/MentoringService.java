package com.company.mentoring.service;

import java.util.List;

public interface MentoringService {
	
	public List<MentoringVO> getMentoringList(MentoringVO vo); // 멘토링 리스트
	
	public int insertMentoring(MentoringVO vo);
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);
	
	

	public MentoringVO MentoringRegisterCheck(MentoringVO vo); // 멘토링 중복 체크
}
