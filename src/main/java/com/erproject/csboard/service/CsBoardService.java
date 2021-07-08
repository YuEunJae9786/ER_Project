package com.erproject.csboard.service;

import java.util.List;

import com.erproject.command.NoticeVO;
import com.erproject.util.OrderUtil;

public interface CsBoardService {
	
	public int noticeRegist(NoticeVO vo); // 글 등록 
	public List<NoticeVO> noticeGetList(OrderUtil orderType); // 글 불러오기

}
