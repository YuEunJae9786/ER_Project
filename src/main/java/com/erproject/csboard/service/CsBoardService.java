package com.erproject.csboard.service;

import java.util.List;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.util.OrderUtil;

public interface CsBoardService {
	
	public int noticeRegist(NoticeVO vo); // 노티스 게시판 글 등록 
	public int faqRegist(FaqVO vo); // faq 게시판 글 등록
	public List<NoticeVO> noticeGetList(OrderUtil orderUtil); // 노티스 게시판 글 불러오기
	public List<FaqVO> faqGetList(OrderUtil orderUtil); // faq 게시판 글 불러오기

}
