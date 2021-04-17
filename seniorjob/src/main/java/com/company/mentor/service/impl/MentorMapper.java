package com.company.mentor.service.impl;

import java.util.List;

import com.company.mentor.service.MentorSearchVO;
import com.company.mentor.service.MentorVO;

public interface MentorMapper {
	
	public List<MentorVO> getMentorList(MentorVO vo); // 검색
	public List<MentorVO> getKeywordSearch(MentorVO vo); // 키워드 검색
	public List<MentorVO> getAgeSearch(String searchAge); // 연령 검색

	public MentorVO getMentor(MentorVO vo); // 멘토 상세페이지
	
	public void MentorRegisterProc(MentorVO vo); // 멘토 등록
	public MentorVO mentorRegisterCheck(MentorVO vo); // 멘토 등록 중복 체크
	
	// 페이징 구현
	public int getCountMentor(); // 게시물 총 개수
	public List<MentorVO> getSearchMentor(MentorSearchVO vo); // 페이징 처리된 게시글 조회
	
	public List<MentorVO> getMentorByDate(MentorVO vo); // 멘토리스트 세부검색: 최신순
	public List<MentorVO> getMentorByFollow(MentorVO vo); // 멘토리스트 세부검색: 인기순
	
	public String getMentorId(MentorVO vo);// 멘토 아이디 조회

}
