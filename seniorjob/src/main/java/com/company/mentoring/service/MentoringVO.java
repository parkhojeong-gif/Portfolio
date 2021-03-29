package com.company.mentoring.service;

import lombok.Data;

@Data
public class MentoringVO {  //멘토링 코스
	private String mentoring_number;  	//멘토링 코스 번호
	private String 	mentoring_name; 	//멘토링 코스 이름
	private String mentoring_limit; 	//멘토링 코스 정원
	private String mentoring_content; 		//멘토링 코스 내용
	private String mentoring_photo;	//멘토링 코스 이미지
	private String mentoring_price;	//멘토링 코스 금액
	private String mentoring_data;	//멘토링 코스 자료
	private String mentoring_request;	//멘토링 코스 요청사항
	private String mentor_id;	//멘토 id
	private String mentoring_end_date;	//멘토링 코스 종료일
	private String mentoring_begin_date;	//멘토링 코스 시작일
}
