package com.erproject.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.erproject.command.KickListVO;
import com.erproject.command.LiveInfoVO;

@RestController
@RequestMapping("/location")
public class LocationRestController {
	
	@PostMapping("/getMarkInfo")
	public @ResponseBody List<KickListVO> markInfo(@RequestBody LiveInfoVO vo) {
		System.out.println(vo.toString());
		return null;
	}
}
