package com.company.users.service;

import java.util.List;
import java.util.Map;

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
	public UsersVO kakaoCheck(UsersVO vo); //카카오로그인체크
	
	// 회원정보(패스워드 변경 겸용) 변경
	public int updateInfo(UsersVO vo) throws Exception;
	
	public int insertCerti(UsersVO vo); //자격증/경력인증서 등록

	public int updateUsersProc(UsersVO vo); //개인정보 수정 처리, 양소민 추가	
	public List<UsersVO> getUsersForPayment(Map<String, Object> map); // 김찬곤 / 단건 조회
}
