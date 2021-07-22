
package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticeImageVO {

	
	private int ni_No; // 이미지번호
	private int notice_No; // 글 번호
	private String ni_Path; // 이미지 경로
	private String ni_Name; // 이미지 이름
	
	
}
