package com.company.mentor.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.following.service.FollowingVO;
import com.company.mentor.service.MentorSearchVO;
import com.company.mentor.service.MentorService;
import com.company.mentor.service.MentorVO;
@Service
public class MentorServiceImpl implements MentorService {
	
	@Autowired MentorMapper mentorMapper;

	// 멘토 전체 리스트 조회
	public List<MentorVO> MentorList() {
		return null;
	}

	// 전체검색 / 지역 검색 / 직무 검색
	public List<MentorVO> getMentorList(MentorVO vo) {
		return mentorMapper.getMentorList(vo);
	}

	// 키워드 검색
	public List<MentorVO> getKeywordSearch(String searchKeyword) {
		return mentorMapper.getKeywordSearch(searchKeyword);
	}

	// 연령 검색
	public List<MentorVO> getAgeSearch(String searchAge) {
		return mentorMapper.getAgeSearch(searchAge);
	}

	// 멘토 상세 페이지(단건 조회)
	public MentorVO getMentor(MentorVO vo) {
		return mentorMapper.getMentor(vo);
	}

	// 멘토 등록
	public void MentorRegisterProc(MentorVO vo) {
	}

	// 멘토 등록 중복 체크
	public MentorVO mentorRegisterCheck(MentorVO vo) {
		return mentorMapper.mentorRegisterCheck(vo);
	}

	// 멘토 페이징1
	public int getCountMentor() {
		return mentorMapper.getCountMentor();
	}

	// 멘토 페이징2 + 멘토 전체 리스트 조회
	public List<MentorVO> getSearchMentor(MentorSearchVO vo) {
		return mentorMapper.getSearchMentor(vo);
	}

	// 멘토리스트 상세 검색: 최신순 
	public List<MentorVO> getMentorByDate(MentorSearchVO vo) {
		return mentorMapper.getMentorByDate(vo);
	}

	// 멘토리스트 상세 검색: 인기순
	public List<MentorVO> getMentorByFollow(MentorSearchVO vo) {
		return mentorMapper.getMentorByFollow(vo);
	}

}
