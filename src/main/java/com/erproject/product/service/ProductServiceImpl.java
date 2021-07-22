package com.erproject.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erproject.command.ProductInfoVO;
import com.erproject.command.ProductReviewVO;
import com.erproject.product.mapper.ProductMapper;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public int reviewRegist(ProductReviewVO vo) {
		
		return productMapper.reviewRegist(vo);
	}

	@Override
	public ArrayList<ProductReviewVO> reviewGetList(String pcode) {
		
		return productMapper.reviewGetList(pcode);
	}

	@Override
	public ProductReviewVO getDetail(int rno) {
		
		return productMapper.getDetail(rno);
	}

	@Override
	public int update(ProductReviewVO vo) {
		
		return productMapper.update(vo);
	}

	@Override
	public int delete(int rno) {
		
		return productMapper.delete(rno);
	}

	@Override
	public ProductInfoVO productGetList(String pcode) {
		
		return productMapper.productGetList(pcode);
	}

}
