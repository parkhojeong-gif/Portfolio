package com.company.businesspalna.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.businesspalna.service.BusinessPlanAService;
import com.company.businesspalna.service.BusinessPalnAVO;

@Service
public class BusinessPlanAServiceImpl implements BusinessPlanAService {
	
	@Autowired BusinessPlanAMapper dao;

	@Override
	public int insertBusinessPlanA(BusinessPalnAVO vo) {
		return dao.insertBusinessPlanA(vo);
	}
	
	@Override
	public int insertBusinessPlanB(BusinessPalnAVO vo) {
		return dao.insertBusinessPlanB(vo);
	}

	@Override
	public int insertBusinessPlanC(BusinessPalnAVO vo) {
		return dao.insertBusinessPlanC(vo);
	}

	@Override
	public int insertBusinessPlanD(BusinessPalnAVO vo) {
		return dao.insertBusinessPlanD(vo);
	}

	@Override
	public int updateBusinessPlanA(BusinessPalnAVO vo) {
		return dao.updateBusinessPlanA(vo);
	}

	@Override
	public int deleteBusinessPlanA(BusinessPalnAVO vo) {
		return dao.deleteBusinessPlanA(vo);
	}

	@Override
	public BusinessPalnAVO getBusinessPlanA(BusinessPalnAVO vo) {
		return dao.getBusinessPlanA(vo);
	}

	@Override
	public List<BusinessPalnAVO> getSearchBusinessPlanA(BusinessPalnAVO vo) {
		return dao.getSearchBusinessPlanA(vo);
	}

	@Override
	public List<Map<String, Object>> getBpExcel(BusinessPalnAVO vo) {
		return dao.getBpExcel(vo);
	}

	@Override
	public int getSeq() {
		return dao.getSeq();
	}

	


}
