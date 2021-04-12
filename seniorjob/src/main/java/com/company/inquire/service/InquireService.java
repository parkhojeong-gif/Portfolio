package com.company.inquire.service;

import java.util.List;
import java.util.Map;

public interface InquireService {
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
	//===============================================//
	//유저 내문의목록조회
	public List<InquireVO> userInquireList(Map<String, Object> map);
	//유저 내문의목록단건조회
	public InquireVO getUserInquire(InquireVO vo);
	//관리자 답변작성
	public int insertAnswer(Inquire_AnswerVO avo);
	//관리자 답변작성시 미답변->답변완료
	public boolean updateConfirm(InquireVO vo);
	
}
