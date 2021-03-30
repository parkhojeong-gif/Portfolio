package com.company.service_center.service;

import java.util.List;

import com.company.service_center.PagingVO;

public interface Service_CenterService {
		//등록
		public int insertService_Center(Service_CenterVO vo);
		//수정
		public int updateService_Center(Service_CenterVO vo);
		//삭제
		public int deleteService_Center(Service_CenterVO vo);
		//단건조회
		public Service_CenterVO getService_Center(Service_CenterVO vo);
		//전체 검색 조회
		public List<Service_CenterVO> getService_CenterList(Service_CenterVO vo);
		//조회수 증가
		public boolean updateClick(Service_CenterVO vo);
		// 게시물 총 갯수
		public int countBoard();
		// 페이징 처리 게시글 조회
		public List<Service_CenterVO> selectBoard(PagingVO vo);
		
	}

