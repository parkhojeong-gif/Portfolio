package com.company.businesspalna.service.impl;

import java.util.List;

import com.company.businesspalna.service.BusinessPalnAVO;

public interface BusinessPlanAMapper {

public int insertBusinessPlanA(BusinessPalnAVO vo);
	
	public int updateBusinessPlanA(BusinessPalnAVO vo);
	
	public int deleteBusinessPlanA(BusinessPalnAVO vo);
	
	public BusinessPalnAVO getBusinessPlanA(BusinessPalnAVO vo);
	
	public List<BusinessPalnAVO> getSearchBusinessPlanA(BusinessPalnAVO vo);

	
}
