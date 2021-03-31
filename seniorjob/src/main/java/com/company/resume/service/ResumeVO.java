package com.company.resume.service;

import lombok.Data;

@Data
public class ResumeVO {		//이력서필수
	private String resume_no;		//이력서번호
	private String resume_name;		//이름
	private String resume_birth;		//생년월일
	private String resume_email;		//이메일
	private String resume_phone;		//휴대폰번호
	private String resume_address;		//주소
	private String resume_school;		//학교명
	private String resume_area;		//지역
	private String resume_start;		//입학일
	private String resume_end;		//졸업일
	private String id;		//아이디
	private String collection;		//지도내용
	private String image;		//이미지
	private String self_name;   //자소서 제목
}
