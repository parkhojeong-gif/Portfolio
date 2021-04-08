package com.company.mentoring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.mentoring.service.MentoringService;
import com.company.mentoring.service.MentoringVO;

@Service
public class MentoringServiceImpl implements MentoringService {
	
	@Autowired MentoringMapper dao;

	@Override
	public int insertMentoring(MentoringVO vo) {
		return dao.insertMentoring(vo);
	}

	@Override
	public int updateMentoring(MentoringVO vo) {
		return dao.updateMentoring(vo);
	}

	@Override
	public int deleteMentoring(MentoringVO vo) {
		return dao.deleteMentoring(vo);
	}

	@Override
	public MentoringVO getMentoring(MentoringVO vo) {
		return dao.getMentoring(vo);
	}

	@Override
	public List<MentoringVO> getSearchMentoring(MentoringVO vo) {
		return dao.getSearchMentoring(vo);
	}

	@Override
	public void MentoringRegisterProc(MentoringVO vo) {
	}

}
