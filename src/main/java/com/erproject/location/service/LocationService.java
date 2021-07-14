package com.erproject.location.service;

import java.util.List;

import com.erproject.command.KickListVO;

public interface LocationService {
	public int insertList(List<KickListVO> vo);//실시간 킥보드 추가
	public List<KickListVO> getList();
}
