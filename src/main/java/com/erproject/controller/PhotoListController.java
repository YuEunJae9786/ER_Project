package com.erproject.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erproject.command.PhotoListVO;
import com.erproject.csboard.service.PhotoListService;
import com.erproject.util.Criteria;

@Controller
@RequestMapping("/photo")
public class PhotoListController {
	
	
//	@Autowired
//	@Qualifier("photoService")
//	private PhotoListService photoListService;
//	
	
//	@RequestMapping("/freeList")
//	public void photoList(Model model, Criteria cri) {
//		
////		ArrayList<PhotoListVO> list = photoListService.getList(cri);
////		int total = photoListService.getTotal(cri);
//		
//	}
	
	@RequestMapping("/photoList")
	public void photoList() {
		
	}
	
	@RequestMapping("/writeReview")
	public void writeReview() {
		
	}
}
