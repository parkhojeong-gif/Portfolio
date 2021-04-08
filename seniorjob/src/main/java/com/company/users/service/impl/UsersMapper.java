package com.company.users.service.impl;

import java.util.List;

import com.company.users.service.UsersVO;

public interface UsersMapper {
	
	public List<UsersVO> getUsersList();	//전체조회
	public int insertUsers(UsersVO vo);		//등록
	public int updateUsers(UsersVO vo);		//수정
	public int deleteUsers(UsersVO vo);		//삭제
	public UsersVO getUsers(UsersVO vo);	//단건조회
	public UsersVO logCheck(UsersVO vo);    //로그인
	public int idCheck(UsersVO vo); //아이디 중복체크
	//이메일발송
	public void sendEmail(UsersVO vo, String div) throws Exception;
<<<<<<< HEAD
	// 패스워드 변경
=======
	// 회원정보 변경
>>>>>>> branch 'main' of https://github.com/aekgmla77/seniorjob.git
	public int updateInfo(UsersVO vo) throws Exception;
<<<<<<< HEAD
	
	public int insertCerti(UsersVO vo); //자격증/경력인증서 등록
=======
	public int emailCheck(String email); //email 중복체크 
	public UsersVO kakaoCheck(UsersVO vo); //카카오로그인체크
>>>>>>> branch 'main' of https://github.com/aekgmla77/seniorjob.git

}
