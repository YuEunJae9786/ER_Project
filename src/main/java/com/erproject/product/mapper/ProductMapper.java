package com.erproject.product.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.ProductInfoVO;
import com.erproject.command.ProductReviewVO;

@Mapper
public interface ProductMapper {

	public int reviewRegist(ProductReviewVO vo); // 제품 후기 등록
	public ArrayList<ProductReviewVO> reviewGetList(String pcode); // 메인 화면에 후기 리스트 가져오기
	public ProductReviewVO getDetail(int rno); // 후기 상세에서 보여질 데이터 가져오기
	public int update(ProductReviewVO vo); // 후기 업데이트
	public int delete(int rno); // 후기 삭제
	
	public ProductInfoVO productGetList(String pcode);
	
}
