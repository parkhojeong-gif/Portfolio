package com.company.manager.mentor.service;

import java.util.List;

import com.company.manager.mentor.mentorVO;
import com.company.manager.utils.PagingVO;

public interface MentorService {
	//멘토 전체조회
			public List<mentorVO> mentorList(mentorVO vo);
			//페이징 처리 후 게시글 조회
			public List<mentorVO> selectBoard(PagingVO vo);
			//총 게시글 갯수 출력
			public int countBoard();
			//멘토 단건조회
			public mentorVO getMentorList(mentorVO vo);	
			//멘토 수정
			public int updateMentor(mentorVO vo);
			//멘토 삭제
			public int deleteMentor(mentorVO vo);
}
