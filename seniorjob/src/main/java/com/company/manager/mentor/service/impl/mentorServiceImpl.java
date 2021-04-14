package com.company.manager.mentor.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.manager.mentor.mentorVO;
import com.company.manager.mentor.service.MentorService;
import com.company.manager.utils.PagingVO;
@Service
public class mentorServiceImpl implements MentorService {

	@Autowired manMentorMapper dao;
	
	@Override
	public List<mentorVO> mentorList(mentorVO vo) {
		// TODO Auto-generated method stub
		return dao.mentorList(vo);
	}

	@Override
	public List<mentorVO> selectBoard(PagingVO vo) {
		// TODO Auto-generated method stub
		return dao.selectBoard(vo);
	}

	@Override
	public int countBoard() {
		// TODO Auto-generated method stub
		return dao.countBoard();
	}

	@Override
	public mentorVO getMentorList(mentorVO vo) {
		// TODO Auto-generated method stub
		return dao.getMentorList(vo);
	}

	@Override
	public int updateMentor(mentorVO vo) {
		// TODO Auto-generated method stub
		return dao.updateMentor(vo);
	}

	@Override
	public int deleteMentor(mentorVO vo) {
		// TODO Auto-generated method stub
		return dao.deleteMentor(vo);
	}

}
