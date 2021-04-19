package com.company.mentoring.service.impl;

import java.util.List;

import com.company.mentoring.service.MentoringVO;

public interface MentoringMapper {
	
//	--------------------------------------------------------김찬곤-----------------------------------------------------------------------------------------------------	
	public List<MentoringVO> getMentoringList(MentoringVO vo); // 硫섑넗留� 由ъ뒪�듃
	public List<MentoringVO> getKeywordMentoring(MentoringVO vo);
	public void insertMentoring(MentoringVO vo);
	public int getMentoringCnt(MentoringVO vo); // 진행중인 멘토링 카운트 
	public MentoringVO getSearchMentoringChanGon(MentoringVO vo); // 멘토링 단건 조회_김찬곤
	public List<MentoringVO> mentoringRegisterCheck(MentoringVO vo); // 硫섑넗留� 以묐났 泥댄겕
	public MentoringVO MentoringRegisterCheck(MentoringVO vo); // 멘토링 중복 체크
	public MentoringVO getMentoringDetail(MentoringVO vo); //멘토링 코스 상세조회 
	public List<MentoringVO> getMentoring(MentoringVO vo);
	
//	-------------------------------------------------------- End of 김찬곤-----------------------------------------------------------------------------------------------------		
	
	public int updateMentoring(MentoringVO vo);
	public int deleteMentoring(MentoringVO vo);
	public List<MentoringVO> getSearchMentoring(MentoringVO vo);
}