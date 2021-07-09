package com.erproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	// 제품 상세 페이지 화면처리
	@RequestMapping("/productMain")
	public void productMain() {
		
	}
	
	@RequestMapping("/reviewRegist")
	public void reviewRegist() {
		
	}

}
