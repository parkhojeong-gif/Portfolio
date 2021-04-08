package com.company.businesspalna.service;

import java.util.List;
import java.util.Map;

public interface BusinessPlanAService {
	
	//BusinessPlan A,B,C,D table에 등록 //수정중, 작동안됨.
	public int insertBusinessPlanA(BusinessPalnAVO vo);
	public int insertBusinessPlanB(BusinessPalnAVO vo);
	public int insertBusinessPlanC(BusinessPalnAVO vo);
	public int insertBusinessPlanD(BusinessPalnAVO vo);
	
	//등록시 sequence번호 가져오기
	public String getSeq();
	
	//사업계획서 수정
	public int updateBusinessPlanA(BusinessPalnAVO vo);
	
	//사업계획서 삭제
	public int deleteBusinessPlanA(BusinessPalnAVO vo);
	
	//사업계획서 단건조회
	public BusinessPalnAVO getBusinessPlanA(BusinessPalnAVO vo);
	
	//등록된 사업계획서 목록 조회
	public List<BusinessPalnAVO> getSearchBusinessPlanA(BusinessPalnAVO vo);
	public List<BusinessPalnAVO> getSearchBusinessPlanB(BusinessPalnAVO vo);
	public List<BusinessPalnAVO> getSearchBusinessPlanC(BusinessPalnAVO vo);
	public List<BusinessPalnAVO> getSearchBusinessPlanD(BusinessPalnAVO vo);
	
	//사업계획서 엑셀로 다운로드
	public List<Map<String, Object>> getBpExcel(BusinessPalnAVO vo);

}
