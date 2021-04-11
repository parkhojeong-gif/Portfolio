package com.company.inquire.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.inquire.service.InquireService;
import com.company.inquire.service.InquireVO;

@Service
public class InquireImpl implements InquireService{
	@Autowired InquireMapper dao;
	
	@Override
	public int insertInquire(InquireVO vo) {
		// TODO 문의 등록처리
		return dao.insertInquire(vo);
	}

	@Override
	public int updateInquire(InquireVO vo) {
		// TODO 문의 수정처리
		return dao.updateInquire(vo);
	}

	@Override
	public int deleteInquire(InquireVO vo) {
		// TODO 문의 삭제처리
		return dao.deleteInquire(vo);
	}

	@Override
	public InquireVO getInquire(InquireVO vo) {
		// TODO 문의 상세조회(단건조회)
		return dao.getInquire(vo);
	}

	@Override
	public List<InquireVO> getInquireList() {
		// TODO 문의 전체조회
		return dao.getInquireList();
	}

}
