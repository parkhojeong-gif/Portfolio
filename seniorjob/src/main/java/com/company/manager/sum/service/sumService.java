package com.company.manager.sum.service;

import java.util.List;

import com.company.manager.sum.DateVO;

import com.company.manager.sum.sumVO;

public interface sumService {
	//쇼핑 전체조회
	public List<sumVO> sumList(DateVO vo);
	
	//월별 매출 조회
	public List<sumVO> monsum(DateVO vo);
	
	//월 포함 총 합계
	public List<sumVO> summonth(DateVO vo);
}
