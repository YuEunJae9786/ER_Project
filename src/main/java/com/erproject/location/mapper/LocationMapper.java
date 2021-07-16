package com.erproject.location.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.KickListVO;

@Mapper
public interface LocationMapper {
	public List<KickListVO> setMarkInfo(List<KickListVO> vo);
}
