package com.company.mentoring.service;

import java.util.List;

public interface MentoringService {
	
public int insertMentoring(MentoringVO vo);
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);
	
	

	public void MentoringRegisterProc(MentoringVO vo); // 멘토링 등록
	
	public MentoringVO getMentoringDetail(MentoringVO vo); //멘토링 코스 상세조회 

}
