package com.erproject.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductReviewVO {
	
	private int rno;
	private String writer;
	private String title;
	private String content;
	private String star;
	private Timestamp regdate;
	private Timestamp updatedate;
	private String pcode;

	public ProductReviewVO() {
		
	}
	public ProductReviewVO(int rno, String writer, String title, String content, String star, Timestamp regdate,
			Timestamp updatedate, String pcode) {
		super();
		this.rno = rno;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.star = star;
		this.regdate = regdate;
		this.updatedate = updatedate;
		this.pcode = pcode;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate) {
		this.updatedate = updatedate;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	@Override
	public String toString() {
		return "ProductReviewVO [rno=" + rno + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", star=" + star + ", regdate=" + regdate + ", updatedate=" + updatedate + ", pcode=" + pcode + "]";
	}
	
	
	
	
	

	private int helpcount;


}
