package com.erproject.user.mapper;




import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.UserVO;


@Mapper
public interface UserMapper {
	
	public int join(UserVO vo); //가입요청

}
