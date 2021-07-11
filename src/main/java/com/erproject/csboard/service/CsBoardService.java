package com.erproject.csboard.service;

import java.util.List;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.util.Criteria;
import com.erproject.util.OrderUtil;

public interface CsBoardService {
	
	public int noticeRegist(NoticeVO vo); // 노티스 게시판 글 등록 
	public int faqRegist(FaqVO vo); // faq 게시판 글 등록
	public int getNoticeTotal(OrderUtil orderUtil); // 노티스 게시판 총 게시글 수
	public int getFaqTotal(OrderUtil orderUtil); // FAQ 게시판 총 게시글 수
	public List<NoticeVO> noticeGetList(OrderUtil orderUtil, Criteria cri); // 노티스 게시판 글 불러오기
	public List<FaqVO> faqGetList(OrderUtil orderUtil, Criteria cri); // faq 게시판 글 불러오기

}
