package com.company.resume.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.resume.service.ResumeService;
import com.company.resume.service.ResumeVO;

@Service
public class ResumeServiceImpl implements ResumeService{

	@Autowired ResumeMapper resumemapper;
	
	@Override
	public List<ResumeVO> getSearchResumeList() {
		return resumemapper.getSearchResumeList();
	}

	@Override
	public int insertResume(ResumeVO vo) {
		return resumemapper.insertResume(vo);
	}

	@Override
	public int updateResuem(ResumeVO vo) {
		return resumemapper.updateResuem(vo);
	}

	@Override
	public int deleteResume(ResumeVO vo) {
		return resumemapper.deleteResume(vo);
	}

	@Override
	public ResumeVO getResume(ResumeVO vo) {
		return resumemapper.getResume(vo);
	}

}
