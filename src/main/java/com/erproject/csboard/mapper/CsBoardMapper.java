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
	public List<NoticeVO> noticeGetList(OrderUtil orderType); // 글 불러오기
	
}
