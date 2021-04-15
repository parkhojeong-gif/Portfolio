package com.company.mentoring.service.impl;

import java.util.List;

import com.company.mentoring.service.MentoringVO;

public interface MentoringMapper {
	
	public List<MentoringVO> getMentoringList(MentoringVO vo); // 硫섑넗留� 由ъ뒪�듃
	public List<MentoringVO> getKeywordMentoring(MentoringVO vo);
	public void insertMentoring(MentoringVO vo);
	
	public int updateMentoring(MentoringVO vo);
	
	public int deleteMentoring(MentoringVO vo);
	
	public MentoringVO getMentoring(MentoringVO vo);
	
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);

	public List<MentoringVO> mentoringRegisterCheck(MentoringVO vo); // 硫섑넗留� 以묐났 泥댄겕
}