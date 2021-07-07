package com.erproject.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {

	private int notice_No; // 글번호
	private String notice_Writer; // 작성자
	private String notice_Title; // 제목
	private String notice_Content; // 내용
	private int notice_View; // 조회수
	private Timestamp notice_Regdate; // 등록일
	private Timestamp notice_UpdateDate; // 업데이트 등록일
	
}
