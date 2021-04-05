package com.company.users.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

public interface UsersService {

	public List<UsersVO> getUsersList();	//전체조회
	public int insertUsers(UsersVO vo);		//등록
	public int updateUsers(UsersVO vo);		//수정
	public int deleteUsers(UsersVO vo);		//삭제
	public UsersVO getUsers(UsersVO vo);	//단건조회
	public UsersVO logCheck(UsersVO vo);    //로그인
	public int idCheck(UsersVO vo); //아이디 중복체크
	//이메일발송
	public void sendEmail(UsersVO vo, String div) throws Exception;
	//비밀번호찾기
	public void findPw(HttpServletResponse resp, UsersVO vo) throws Exception;
	public int emailCheck(String email); //email 중복체크 
}
