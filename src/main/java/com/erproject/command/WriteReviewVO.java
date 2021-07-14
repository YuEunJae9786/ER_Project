package com.erproject.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WriteReviewVO {
	
	private String writer;
	private String title;
	private Timestamp regdate;
}
