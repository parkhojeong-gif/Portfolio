package com.company.service_center.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.service_center.PagingVO;
import com.company.service_center.SearchCriteria;
import com.company.service_center.service.Service_CenterService;
import com.company.service_center.service.Service_CenterVO;

@Service
public class Service_CenterImpl implements Service_CenterService{
	
	@Autowired Service_CenterMapper dao;

	@Override
	public int insertService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub 등록
		return dao.insertService_Center(vo);
	}

	@Override
	public void updateService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub 수정
	 dao.updateService_Center(vo);
	}

	@Override
	public void deleteService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub 삭제
		dao.deleteService_Center(vo);
	}

	@Override
	public Service_CenterVO getService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.getService_Center(vo);
	}

	@Override
	public boolean updateClick(Service_CenterVO vo) {
		// TODO 조회수 증가
		return dao.updateClick(vo);
	}

	@Override
	public int countBoard() {
		// TODO Auto-generated method stub
		return dao.countBoard();
	}

	@Override
	public List<Service_CenterVO> selectBoard(PagingVO vo) {
		// TODO Auto-generated method stub
		return dao.selectBoard(vo);
	}

	@Override
	public List<Service_CenterVO> searchService(String searchKeyword) {
		// TODO Auto-generated method stub
		return dao.searchService(searchKeyword);
	}

	@Override
	public List<Service_CenterVO> list(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return dao.listCount(scri);
	}

	@Override
	public Service_CenterVO preNext(Service_CenterVO vo) {
		// TODO 게시물 단건조회 후 게시글 이전/다음
		return dao.preNext(vo);
	}
//==============================================결제환불========================================================
	@Override
	public List<Service_CenterVO> listQna(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return dao.listQna(scri);
	}

	@Override
	public int listCountQna(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return dao.listCountQna(scri);
	}

	@Override
	public List<Service_CenterVO> searchServiceQna(String searchKeyword) {
		// TODO Auto-generated method stub
		return dao.searchServiceQna(searchKeyword);
	}

	@Override
	public Service_CenterVO getService_CenterQna(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.getService_CenterQna(vo);
	}

	@Override
	public Service_CenterVO preNextQna(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.preNextQna(vo);
	}

	@Override
	public int insertService_CenterQna(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.insertService_CenterQna(vo);
	}

	

}
