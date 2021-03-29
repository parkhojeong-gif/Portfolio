package com.company.inquire.service.impl;

import java.util.List;

import com.company.inquire.service.InquireVO;



public interface InquireMapper {
	//등록
	public int insertInquire(InquireVO vo);
	//수정
	public int updateInquire(InquireVO vo);
	//삭제
	public int deleteInquire(InquireVO vo);
	//단건조회
	public InquireVO getInquire(InquireVO vo);
	//전체 검색 조회
	public List<InquireVO> getInquireList();
}
