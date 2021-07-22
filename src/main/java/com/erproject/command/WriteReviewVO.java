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
	public WriteReviewVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WriteReviewVO(String writer, String title, Timestamp regdate) {
		super();
		this.writer = writer;
		this.title = title;
		this.regdate = regdate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "WriteReviewVO [writer=" + writer + ", title=" + title + ", regdate=" + regdate + "]";
	}
	
	
}
