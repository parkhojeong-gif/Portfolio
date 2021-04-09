package com.company.mentoring.service.impl;

import java.util.List;

import com.company.mentoring.service.MentoringVO;

public interface MentoringMapper {
	
	public int insertMentoring(MentoringVO vo);
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);

	public int MentoringRegisterProc(MentoringVO vo); // 멘토링 등록
	public MentoringVO MentoringRegisterCheck(MentoringVO vo); // 멘토링 중복 체크
}