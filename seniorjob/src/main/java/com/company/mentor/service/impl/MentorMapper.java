package com.company.mentor.service.impl;

import java.util.List;

import com.company.mentor.service.MentorVO;

public interface MentorMapper {
	
	// 전체 조회('전체검색'클릭)
	public List<MentorVO> getMentorList();
	
	// 단건 조회(조건 선택 후 '검색'클릭)
	public List<MentorVO> getMentor(MentorVO vo);

}
