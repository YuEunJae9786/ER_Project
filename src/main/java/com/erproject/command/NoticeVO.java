package com.erproject.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {

	private int notice_No; // 게시판 글번호
	private String notice_Writer; // 작성자
	private String notice_Title; // 제목
	private String notice_Content; // 내용
	private int notice_View = 0; // 조회수
	private String notice_Regdate; // 등록일

	private String notice_UpdateDate; // 업데이트 등록일

	private List<NoticeImageVO> noticeImageList; 
	
	private List<MultipartFile> file;
	
}