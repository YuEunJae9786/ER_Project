package com.erproject.csboard.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.command.QnaVO;
import com.erproject.csboard.mapper.CsBoardMapper;
import com.erproject.util.Criteria;
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
	public int qnaRegist(QnaVO vo) {
		return csBoardMapper.qnaRegist(vo);
	}
	
	@Override
	public int getFaqTotal(OrderUtil orderUtil) {
		return csBoardMapper.getFaqTotal(orderUtil);
	}
	
	@Override
	public int getNoticeTotal(OrderUtil orderUtil) {
		return csBoardMapper.getNoticeTotal(orderUtil);
	}
	
	@Override
	public int getQnaTotal(OrderUtil orderUtil) {
		return csBoardMapper.getQnaTotal(orderUtil);
	}
	
	@Override
	public List<NoticeVO> noticeGetList(OrderUtil orderUtil, Criteria cri) {
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchType", orderUtil.getSearchType());
		map.put("searchName", orderUtil.getSearchName());
		map.put("orderType", orderUtil.getOrderType());
		
		map.put("pageNum", Integer.toString(cri.getPageNum()));
		map.put("amount", Integer.toString(cri.getAmount()));
		
		return csBoardMapper.noticeGetList(map);
	}
	
	@Override
	public List<FaqVO> faqGetList(OrderUtil orderUtil, Criteria cri) {
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchType", orderUtil.getSearchType());
		map.put("searchName", orderUtil.getSearchName());
		map.put("orderType", orderUtil.getOrderType());
		map.put("listOrder", orderUtil.getListOrder());
		
		map.put("pageNum", Integer.toString(cri.getPageNum()));
		map.put("amount", Integer.toString(cri.getAmount()));

		return csBoardMapper.faqGetList(map);
	}
	
	@Override
	public List<QnaVO> qnaGetList(OrderUtil orderUtil, Criteria cri) {
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchType", orderUtil.getSearchType());
		map.put("searchName", orderUtil.getSearchName());
		map.put("orderType", orderUtil.getOrderType());
		map.put("listOrder", orderUtil.getListOrder());
		
		map.put("pageNum", Integer.toString(cri.getPageNum()));
		map.put("amount", Integer.toString(cri.getAmount()));
		
		return csBoardMapper.qnaGetList(map);
	}
	
	
	
	
	
}
