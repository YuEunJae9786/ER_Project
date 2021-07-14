package com.erproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.erproject.command.BikeListVO;
import com.erproject.command.KickListVO;
import com.erproject.location.service.LocationService;

@RestController()
@RequestMapping("/location")
public class LocationRestController {

	@Autowired
	@Qualifier("locationService")
	private LocationService locationService;
	
	@CrossOrigin(origins = "*")
	@PostMapping(value = "/setKickAPI", produces = "application/json")
	public @ResponseBody List<KickListVO> setKickAPI(@RequestParam Map<String, Object> param,
											   HttpServletRequest request,
											   @RequestBody List<BikeListVO> vo) {
		
		List<KickListVO> getKickList = new ArrayList<>();
		for(int i=0;i<vo.size();i++) {
			KickListVO kickListVO = new KickListVO();
			kickListVO.setMarkNo(i);
			kickListVO.setPCode(vo.get(i).getStationId());
			kickListVO.setCCode(vo.get(i).getStationName());
			kickListVO.setLocation_X(vo.get(i).getStationLatitude());
			kickListVO.setLoaction_y(vo.get(i).getStationLongitude());
			kickListVO.setIsRental("null");
			
			getKickList.add(kickListVO);
		}
		
		
		return getKickList;
		
	}
}
