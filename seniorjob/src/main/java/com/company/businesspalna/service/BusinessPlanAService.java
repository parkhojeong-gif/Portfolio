package com.company.businesspalna.service;

import java.util.List;
import java.util.Map;

public interface BusinessPlanAService {
	
	public int insertBusinessPlanA(BusinessPalnAVO vo);
	
	public int updateBusinessPlanA(BusinessPalnAVO vo);
	
	public int deleteBusinessPlanA(BusinessPalnAVO vo);
	
	public BusinessPalnAVO getBusinessPlanA(BusinessPalnAVO vo);
	
	public List<BusinessPalnAVO> getSearchBusinessPlanA(BusinessPalnAVO vo);
	

}
