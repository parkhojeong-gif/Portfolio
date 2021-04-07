package com.company.businesspalna.service;

import java.util.List;
import java.util.Map;

public interface BusinessPlanAService {
	
	public int insertBusinessPlanA(BusinessPalnAVO vo);
	public int insertBusinessPlanB(BusinessPalnAVO vo);
	public int insertBusinessPlanC(BusinessPalnAVO vo);
	public int insertBusinessPlanD(BusinessPalnAVO vo);
	
	public String getSeq();
	
	public int updateBusinessPlanA(BusinessPalnAVO vo);
	
	public int deleteBusinessPlanA(BusinessPalnAVO vo);
	
	public BusinessPalnAVO getBusinessPlanA(BusinessPalnAVO vo);
	
	public List<BusinessPalnAVO> getSearchBusinessPlanA(BusinessPalnAVO vo);
	

	public List<BusinessPalnAVO> getSearchBusinessPlanB(BusinessPalnAVO vo);
	
	public List<BusinessPalnAVO> getSearchBusinessPlanC(BusinessPalnAVO vo);
	
	public List<BusinessPalnAVO> getSearchBusinessPlanD(BusinessPalnAVO vo);
	
	public List<Map<String, Object>> getBpExcel(BusinessPalnAVO vo);

}
