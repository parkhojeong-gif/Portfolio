package com.company.users;

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
	private String log_date; //가입일
}
