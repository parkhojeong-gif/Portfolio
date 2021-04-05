package com.company.schedule.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.schedule.service.ScheduleService;
import com.company.schedule.service.ScheduleVO;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	
	@Autowired ScheduleMapper dao;

	@Override
	public int insertSchedule(ScheduleVO vo) {
		return dao.insertSchedule(vo);
	}

	@Override
	public int updateSchedule(ScheduleVO vo) {
		return dao.updateSchedule(vo);
	}

	@Override
	public int deleteSchedule(ScheduleVO vo) {
		return dao.deleteSchedule(vo);
	}

	@Override
	public ScheduleVO getSchedule(ScheduleVO vo) {
		return dao.getSchedule(vo);
	}

	@Override
	public List<Map> getSearchSchedule(ScheduleVO vo) {
		return dao.getSearchSchedule(vo);
	}

}
