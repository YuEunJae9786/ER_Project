package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeVO {

	private int notice_No; // 湲�踰덊샇
	private String notice_Writer; // �옉�꽦�옄
	private String notice_Title; // �젣紐�
	private String notice_Content; // �궡�슜
	private int notice_View = 0; // 議고쉶�닔
	private String notice_Regdate; // �벑濡앹씪
	private String notice_UpdateDate; // �뾽�뜲�씠�듃 �벑濡앹씪

	
	
	
}
