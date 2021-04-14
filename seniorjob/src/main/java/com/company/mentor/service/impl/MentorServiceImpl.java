package com.company.mentor.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.mentor.service.MentorSearchVO;
import com.company.mentor.service.MentorService;
import com.company.mentor.service.MentorVO;
@Service
public class MentorServiceImpl implements MentorService {
	
	@Autowired MentorMapper mentorMapper;


	// 전체검색 / 지역 검색 / 직무 검색
	@Override
	public List<MentorVO> getMentorList(MentorVO vo) {
		return mentorMapper.getMentorList(vo);
	}

	// 키워드 검색
	@Override
	public List<MentorVO> getKeywordSearch(MentorVO vo) {
		return mentorMapper.getKeywordSearch(vo);

	}

	// 연령 검색
	@Override
	public List<MentorVO> getAgeSearch(String searchAge) {
		return mentorMapper.getAgeSearch(searchAge);
	}

	// 멘토 상세 페이지(단건 조회)
	@Override
	public MentorVO getMentor(MentorVO vo) {
		return mentorMapper.getMentor(vo);
	}

	// 멘토 등록
	@Override
	public void MentorRegisterProc(MentorVO vo) {
	}

	// 멘토 등록 중복 체크
	@Override
	public MentorVO mentorRegisterCheck(MentorVO vo) {
		return mentorMapper.mentorRegisterCheck(vo);
	}

	// 멘토 페이징1
	@Override
	public int getCountMentor() {
		return mentorMapper.getCountMentor();
	}

	// 멘토 페이징2 + 멘토 전체 리스트 조회
	@Override
	public List<MentorVO> getSearchMentor(MentorSearchVO vo) {
		return mentorMapper.getSearchMentor(vo);
	}

	@Override
	public List<MentorVO> getMentorByDate(MentorVO vo) {
		return mentorMapper.getMentorByDate(vo);
	}

	@Override
	public List<MentorVO> getMentorByFollow(MentorVO vo) {
		return mentorMapper.getMentorByFollow(vo);
	}

}
