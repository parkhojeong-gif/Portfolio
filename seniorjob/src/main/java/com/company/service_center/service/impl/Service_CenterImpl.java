package com.company.service_center.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.service_center.Criteria;
import com.company.service_center.PagingVO;
import com.company.service_center.SearchCriteria;
import com.company.service_center.service.Service_CenterService;
import com.company.service_center.service.Service_CenterVO;

@Service
public class Service_CenterImpl implements Service_CenterService{
	
	@Autowired Service_CenterMapper dao;

	@Override
	public int insertService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.insertService_Center(vo);
	}

	@Override
	public int updateService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.updateService_Center(vo);
	}

	@Override
	public int deleteService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.deleteService_Center(vo);
	}

	@Override
	public Service_CenterVO getService_Center(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.getService_Center(vo);
	}

	@Override
	public List<Service_CenterVO> getService_CenterList(Service_CenterVO vo) {
		// TODO Auto-generated method stub
		return dao.getService_CenterList(vo);
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

	

}
