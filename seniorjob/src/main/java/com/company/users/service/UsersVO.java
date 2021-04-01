package com.company.users.service;

import java.util.Date;

import com.company.mentor.service.MentorVO;

import lombok.Data;

@Data
public class UsersVO { //회원테이블
	private String id; //아이디
	private String password; //패스워드
	private String address; //주소
	private String phonenum; //전화번호
	private String email; //이메일
	private String birth; //생년월일
	private String auth; //권한
	private String name; //이름
	private Date log_date; //가입일
	
	private MentorVO mentorVO; // Users/Mentor 테이블 조인구문 사용 시 필요
}
