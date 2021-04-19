package com.company.manager.user.service.impl;

import java.util.List;

import com.company.manager.user.userVO;
import com.company.manager.utils.ManSearchCriteria;


public interface manUserMapper {
	
	// 페이징 처리 및 회원 전체 조회
	public List<userVO> userList(ManSearchCriteria scri);
	// 회원 게시물 총갯수
	public int userCount(ManSearchCriteria scri);
	// 회원 게시글 검색
	public List<userVO> searchUser(String searchKeyword);	
	//회원 단건조회
	public List<userVO> getUserList(userVO vo);	
	//회원 수정
	public int updateUserProc(userVO vo);
	//회원 삭제
	public int deleteUser(userVO vo);
	//회원 승급
	public void authUser(userVO vo);
	
}
