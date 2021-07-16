package com.erproject.location.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erproject.command.KickListVO;
import com.erproject.location.mapper.LocationMapper;

@Service("locationService")
public class LocationServiceImpl implements LocationService{

	@Autowired
	private LocationMapper locationMapper;
	
	@Override
	public List<KickListVO> setMarkInfo(List<KickListVO> vo) {
		// TODO Auto-generated method stub
		return locationMapper.setMarkInfo(vo);
	}
	
}
