package com.company.inquire.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.inquire.service.InquireService;
import com.company.inquire.service.InquireVO;
import com.company.inquire.service.Inquire_AnswerVO;
import com.company.service_center.SearchCriteria;

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
	public List<InquireVO> userInquireList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.userInquireList(map);
	}

	@Override
	public InquireVO getUserInquire(InquireVO vo) {
		// TODO Auto-generated method stub
		return dao.getUserInquire(vo);
	}

	@Override
	public int insertAnswer(Inquire_AnswerVO avo) {
		// TODO Auto-generated method stub
		return dao.insertAnswer(avo);
	}

	@Override
	public boolean updateConfirm(InquireVO vo) {
		// TODO Auto-generated method stub
		return dao.updateConfirm(vo);
	}

	@Override
	public List<Inquire_AnswerVO> userAnswerList(Inquire_AnswerVO avo) {
		// TODO Auto-generated method stub
		return dao.userAnswerList(avo);
	}

	@Override
	public int inquireCount(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return dao.inquireCount(scri);
	}

	@Override
	public List<InquireVO> searchInquire(String searchKeyword) {
		// TODO Auto-generated method stub
		return dao.searchInquire(searchKeyword);
	}

	@Override
	public List<InquireVO> getInquireList(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return dao.getInquireList(scri);
	}

}
