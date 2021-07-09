package com.erproject.command;

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
	private int notice_View = 0; // 조회수
	private String notice_Regdate; // 등록일
	private String notice_UpdateDate; // 업데이트 등록일
	public NoticeVO() {
<<<<<<< HEAD
		
=======
		super();
		// TODO Auto-generated constructor stub
>>>>>>> 5d9c37c3e48de6d8f710bae96933053d2e6c9050
	}
	public NoticeVO(int notice_No, String notice_Writer, String notice_Title, String notice_Content, int notice_View,
			String notice_Regdate, String notice_UpdateDate) {
		super();
		this.notice_No = notice_No;
		this.notice_Writer = notice_Writer;
		this.notice_Title = notice_Title;
		this.notice_Content = notice_Content;
		this.notice_View = notice_View;
		this.notice_Regdate = notice_Regdate;
		this.notice_UpdateDate = notice_UpdateDate;
	}
<<<<<<< HEAD
	@Override
	public String toString() {
		return "NoticeVO [notice_No=" + notice_No + ", notice_Writer=" + notice_Writer + ", notice_Title="
				+ notice_Title + ", notice_Content=" + notice_Content + ", notice_View=" + notice_View
				+ ", notice_Regdate=" + notice_Regdate + ", notice_UpdateDate=" + notice_UpdateDate + "]";
	}
=======
>>>>>>> 5d9c37c3e48de6d8f710bae96933053d2e6c9050
	public int getNotice_No() {
		return notice_No;
	}
	public void setNotice_No(int notice_No) {
		this.notice_No = notice_No;
	}
	public String getNotice_Writer() {
		return notice_Writer;
	}
	public void setNotice_Writer(String notice_Writer) {
		this.notice_Writer = notice_Writer;
	}
	public String getNotice_Title() {
		return notice_Title;
	}
	public void setNotice_Title(String notice_Title) {
		this.notice_Title = notice_Title;
	}
	public String getNotice_Content() {
		return notice_Content;
	}
	public void setNotice_Content(String notice_Content) {
		this.notice_Content = notice_Content;
	}
	public int getNotice_View() {
		return notice_View;
	}
	public void setNotice_View(int notice_View) {
		this.notice_View = notice_View;
	}
	public String getNotice_Regdate() {
		return notice_Regdate;
	}
	public void setNotice_Regdate(String notice_Regdate) {
		this.notice_Regdate = notice_Regdate;
	}
	public String getNotice_UpdateDate() {
		return notice_UpdateDate;
	}
	public void setNotice_UpdateDate(String notice_UpdateDate) {
		this.notice_UpdateDate = notice_UpdateDate;
	}
<<<<<<< HEAD
	
	
=======
	@Override
	public String toString() {
		return "NoticeVO [notice_No=" + notice_No + ", notice_Writer=" + notice_Writer + ", notice_Title="
				+ notice_Title + ", notice_Content=" + notice_Content + ", notice_View=" + notice_View
				+ ", notice_Regdate=" + notice_Regdate + ", notice_UpdateDate=" + notice_UpdateDate + "]";
	}
>>>>>>> 5d9c37c3e48de6d8f710bae96933053d2e6c9050
	
	
	
}
