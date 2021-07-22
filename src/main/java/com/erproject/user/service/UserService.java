package com.erproject.user.service;

import com.erproject.command.UserVO;


public interface UserService {
	
	
	public int join(UserVO vo); //가입요청

	//중복체크 
	public int idCheck(UserVO vo);
	
	//로그인
	public UserVO login(UserVO vo); //로그인
	
	//정보 마이페이지
	public UserVO getInfo(String userId);
	
	//마이페이지 수정
	public int update(UserVO vo);
	
	//삭제
	public int delete(UserVO vo);
	

	
}
