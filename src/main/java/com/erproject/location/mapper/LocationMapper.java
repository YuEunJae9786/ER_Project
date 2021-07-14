package com.erproject.location.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.KickListVO;

@Mapper
public interface LocationMapper {
	public int insertList(List<KickListVO> vo);//실시간 킥보드 추가
	public List<KickListVO> getList();
	
}
