package com.erproject.csboard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.util.OrderUtil;

@Mapper
public interface CsBoardMapper {

	public int noticeRegist(NoticeVO vo); // Notice 글 등록
	public int faqRegist(FaqVO vo); // faq 게시판 글 등록
	public List<NoticeVO> noticeGetList(OrderUtil orderUtil); // 노티스 게시판 글 불러오기
	public List<FaqVO> faqGetList(OrderUtil orderUtil); // faq 게시판 글 불러오기
	
}
