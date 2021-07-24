package com.erproject.location.service;

import java.util.List;

import com.erproject.command.KickListVO;

public interface LocationService {
	public int setMarkInfo(KickListVO vo);
	public List<KickListVO> getKickInfo();
	public int updateMarkInfo(KickListVO vo);
}
