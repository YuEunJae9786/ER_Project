package com.erproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.erproject.command.KickListVO;
import com.erproject.command.LiveInfoVO;
import com.erproject.location.service.LocationService;

@RestController
@RequestMapping("/location")
public class LocationRestController {
	
	@Autowired
	@Qualifier("locationService")
	private LocationService locationService;
	
	@RequestMapping("/locationAdmin")
	public void locationAdmin() {

	};
	
	@PostMapping("/setMarkInfo")
	public @ResponseBody List<KickListVO> markInfo(@RequestBody List<LiveInfoVO> vo) {
		
		List<KickListVO> kickInfo = new ArrayList<KickListVO>();
		KickListVO kickList = new KickListVO();
		
		for(int i=0;i<vo.size();i++) {
			kickList.setMarkNo(i);
			kickList.setPCode(vo.get(i).getStationId());
			kickList.setCCode(vo.get(i).getStationName());
			kickList.setLocation_x(vo.get(i).getStationLatitude());
			kickList.setLocation_y(vo.get(i).getStationLongitude());
			
			kickInfo.add(kickList);
		}
		
		return kickInfo;
	}
}
