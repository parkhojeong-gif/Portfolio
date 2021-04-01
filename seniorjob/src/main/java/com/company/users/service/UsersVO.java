package com.company.users.service;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;


@Data

public class UsersVO { //회원테이블
	@NotEmpty(message="※아이디를 입력하세요")
	private String id; //아이디
	@NotEmpty(message="※패스워드를 입력하세요")
	private String password; //패스워드
	private String address; //주소
	private String phonenum; //전화번호
	private String email; //이메일
	private String birth; //생년월일
	private String auth; //권한
	private String name; //이름
	private Date log_date; //가입일
	private String approval_key; //인증키
}
