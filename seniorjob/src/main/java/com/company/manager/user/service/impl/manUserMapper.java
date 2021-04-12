package com.company.manager.user.service.impl;

import java.util.List;

import com.company.manager.user.userVO;
import com.company.manager.utils.PagingVO;

public interface manUserMapper {
	//회원 전체조회
	public List<userVO> userList(userVO vo);
	//페이징 처리 후 게시글 조회
	public List<userVO> selectBoard(PagingVO vo);
	//총 게시글 갯수 출력
	public int countBoard();
	//회원 단건조회
	public userVO getUserList(userVO vo);	
	//회원 수정
	public int updateUser(userVO vo);
	//회원 삭제
	public int deleteUser(userVO vo);
	//회원 승급
	public int authUser(userVO vo);
}
