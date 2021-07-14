package com.erproject.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.erproject.command.ProductInfoVO;
import com.erproject.command.ProductReviewVO;
import com.erproject.product.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	// 제품 상세 페이지 화면처리 & 후기 리스트 (제품 데이터도 가져오는 작업 추가해야함)
	@RequestMapping("/productMain")
	public void productMain(Model model) {
		
		String pcode = "S1"; // 테스트
		
		ArrayList<ProductReviewVO> list = productService.reviewGetList(pcode);
		model.addAttribute("list", list); // 화면에 전달
		
		ProductInfoVO info = productService.productGetList(pcode);
		model.addAttribute("info", info);
		
		System.out.println(list.toString());
		System.out.println(list.size());
		
		System.out.println(info.toString());
		
	}
	
	// 제품 후기 쓰기 화면처리
	@RequestMapping("/productReviewRegist")
	public void productReviewRegist(@RequestParam("pcode") String pcode,
									Model model) {
		String pc = pcode;
		model.addAttribute("pcode", pc);
	}
	
	// 제품 후기 상세 및 저장 화면처리
	@RequestMapping("/productReviewSave")
	public void productReviewSave(@RequestParam("rno") int rno,
								  Model model) {
		
		ProductReviewVO vo = productService.getDetail(rno);
		model.addAttribute("vo", vo);
//		System.out.println(vo);
		
	}
	
	// 제품 후기 쓰기(등록) 메서드 처리
	@RequestMapping("/registForm")
	public String registForm(ProductReviewVO vo,
							 RedirectAttributes RA) {
		
		int result = productService.reviewRegist(vo);
		
//		System.out.println(result);
		if(result == 1) {
			RA.addFlashAttribute("msg", "등록 성공");
		} else {
			RA.addFlashAttribute("msg", "등록 실패");
		}
		
		return "redirect:/product/productMain";
	}
	
	// 제품 후기 업데이트
	@RequestMapping("/reviewUpdate")
	public String reviewUpdate(ProductReviewVO vo,
							   RedirectAttributes RA) {
		
		int result = productService.update(vo);
		
//		System.out.println(result);
		if(result == 1) {
			RA.addFlashAttribute("msg", "업데이트 성공");
		} else {
			RA.addFlashAttribute("msg", "업데이트 실패");
		}
		
		return "redirect:/product/productMain";
	}
	
	// 제품 후기 삭제하기
	@RequestMapping("/reviewDelete")
	public String reviewDelete(@RequestParam("rno") int rno,
							   RedirectAttributes RA) {
		
		int result = productService.delete(rno);
//		System.out.println(result);
		if(result == 1) {
			RA.addFlashAttribute("msg", "삭제 성공");
		} else {
			RA.addFlashAttribute("msg", "삭제 실패");
		}
		
		return "redirect:/product/productMain";
	}

}
