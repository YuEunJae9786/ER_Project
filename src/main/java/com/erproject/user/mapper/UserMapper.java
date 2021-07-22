package com.erproject.user.mapper;




import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.UserVO;


@Mapper
public interface UserMapper {
	
	public int join(UserVO vo); //가입요청
	
	//아이디 중복 확인 하기 ~
	
	public int idCheck(UserVO vo);
	
	//로그인
	public UserVO login(UserVO vo); //로그인
	
	//마이페이지등록 
	public UserVO getInfo(String userId);
	
	//마이페이지 수정
    public int update(UserVO vo);
    
    public int delete(UserVO vo);
    
 

}
