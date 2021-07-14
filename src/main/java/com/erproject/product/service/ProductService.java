package com.erproject.product.service;

import java.util.ArrayList;

import com.erproject.command.ProductInfoVO;
import com.erproject.command.ProductReviewVO;

public interface ProductService {
	
	// 후기 관련 메서드 입니다.
	public int reviewRegist(ProductReviewVO vo); // 제품 후기 등록
	public ArrayList<ProductReviewVO> reviewGetList(String pcdoe); // 메인 화면에 후기 리스트 가져오기
	public ProductReviewVO getDetail(int rno); // 후기 상세에서 보여질 데이터 가져오기
	public int update(ProductReviewVO vo); // 후기 업데이트
	public int delete(int rno); // 후기 삭제
	
	// 제품 페이지에 처리할 제품 정보 관련 메서드
	public ProductInfoVO productGetList(String pcode);

}
