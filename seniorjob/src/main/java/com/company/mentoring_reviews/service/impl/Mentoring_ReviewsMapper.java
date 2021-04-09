package com.company.mentoring_reviews.service.impl;

import java.util.List;

import com.company.mentoring_reviews.service.Mentoring_ReviewsVO;


public interface Mentoring_ReviewsMapper {
	
		// 페이징 처리
		public int pagingMenReview(Mentoring_ReviewsVO vo);

		// 후기 전체조회
		public List<Mentoring_ReviewsVO> getMenReview(Mentoring_ReviewsVO vo);

		// 후기 단건 조회
		public Mentoring_ReviewsVO getSearchMenReview(Mentoring_ReviewsVO vo);

		// 후기 등록
		public int insertMenReview(Mentoring_ReviewsVO vo);

		// 후기 수정
		public int updateMenReview(Mentoring_ReviewsVO vo);

		// 후기 삭제
		public int deleteMenReview(Mentoring_ReviewsVO vo);

		// 후기 조회수 증가
		public int upnumMenReview(Mentoring_ReviewsVO vo);

}
