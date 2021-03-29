package com.company.service_center.service.impl;

import java.util.List;

import com.company.service_center.service.Service_CenterVO;



public interface Service_CenterMapper {
	//등록
	public int insertService_Center(Service_CenterVO vo);
	//수정
	public int updateService_Center(Service_CenterVO vo);
	//삭제
	public int deleteService_Center(Service_CenterVO vo);
	//단건조회
	public Service_CenterVO getService_Center(Service_CenterVO vo);
	//전체 검색 조회
	public List<Service_CenterVO> getService_CenterList();
}
