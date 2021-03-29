package com.company.users.service.impl;

import java.util.List;

import com.company.users.service.UsersVO;


public interface UsersMapper {
	public List<UsersVO> getUsersList();	//전체조회
	public int insertUsers(UsersVO vo);		//등록
	public int updateUsers(UsersVO vo);		//수정
	public int deleteUsers(UsersVO vo);		//삭제
	public UsersVO getUsers(UsersVO vo);	//단건조회
}
