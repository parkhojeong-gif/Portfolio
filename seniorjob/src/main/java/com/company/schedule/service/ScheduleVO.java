package com.company.schedule.service;

import lombok.Data;

@Data
public class ScheduleVO {		//일정
	private String seq;		//일정번호
	private String schedule_name;		//일정이름
	private String schedule_con;		//요청내용
	private String schedule_start;		//시작일시
	private String schedule_end;		//종료일시
	private String state;		//진행상황
	private String menteeid;		//멘티
	private String mentorid;		//멘토
	private String auth;
}
