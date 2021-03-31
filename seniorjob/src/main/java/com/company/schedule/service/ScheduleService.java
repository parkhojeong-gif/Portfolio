package com.company.schedule.service;

import java.util.List;


public interface ScheduleService {
	
	public int insertSchedule(BusinessPalnAVO vo);
	
	public int updateSchedule(BusinessPalnAVO vo);
	
	public int deleteSchedule(BusinessPalnAVO vo);
	
	public BusinessPalnAVO getSchedule(BusinessPalnAVO vo);
	
	public List<BusinessPalnAVO> getSearchSchedule(BusinessPalnAVO vo);

}
