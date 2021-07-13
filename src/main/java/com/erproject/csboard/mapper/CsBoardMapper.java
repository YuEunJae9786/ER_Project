package com.erproject.csboard.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.command.QnaVO;
import com.erproject.util.OrderUtil;

@Mapper
public interface CsBoardMapper {

	public int noticeRegist(NoticeVO vo); // Notice 글 등록
	public int faqRegist(FaqVO vo); // faq 게시판 글 등록
	public int qnaRegist(QnaVO vo); // qna 게시판 글 등록
	public int getNoticeTotal(OrderUtil orderUtil); // 노티스 게시판 총 게시글 수
	public int getFaqTotal(OrderUtil orderUtil); // FAQ 게시판 총 게시글 수
	public int getQnaTotal(OrderUtil orderUtil); // QnA 게시판 총 게시글 수
	public List<NoticeVO> noticeGetList(Map<String, String> map); // 노티스 게시판 글 불러오기
	public List<FaqVO> faqGetList(Map<String, String> map); // faq 게시판 글 불러오기
	public List<QnaVO> qnaGetList(Map<String, String> map); // qna 게시판 글 불러오기
	public int noticeView(int bno); // notice 게시판 조회수 증가
	public int faqView(int bno); // faq 게시판 조회수 증가
	public int qnaView(int bno); // qna 게시판 조회수 증가
	
}
