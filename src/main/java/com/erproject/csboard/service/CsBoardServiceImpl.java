package com.erproject.csboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.csboard.mapper.CsBoardMapper;
import com.erproject.util.OrderUtil;

@Service("csBoardService")
public class CsBoardServiceImpl implements CsBoardService{

	@Autowired
	private CsBoardMapper csBoardMapper;
	
	@Override
	public int noticeRegist(NoticeVO vo) {
		return csBoardMapper.noticeRegist(vo);
	}
	
	@Override
	public int faqRegist(FaqVO vo) {
		return csBoardMapper.faqRegist(vo);
	}
	
	@Override
	public List<NoticeVO> noticeGetList(OrderUtil orderType) {
		
		return csBoardMapper.noticeGetList(orderType);
	}
	
	
	
}
