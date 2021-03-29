package com.company.mentoring_reviews.service.impl;

import java.util.List;

import com.company.mentoring_reviews.service.Mentoring_ReviewsVO;


public interface Mentoring_ReviewsMapper {
	//등록
	public int insertMentoring_Reviews(Mentoring_ReviewsVO vo);
	//수정
	public int updateMentoring_Reviews(Mentoring_ReviewsVO vo);
	//삭제
	public int deleteMentoring_Reviews(Mentoring_ReviewsVO vo);
	//단건조회
	public Mentoring_ReviewsVO getMentoring_Reviews(Mentoring_ReviewsVO vo);
	//전체 검색 조회
	public List<Mentoring_ReviewsVO> getMentoring_ReviewsList();
}
