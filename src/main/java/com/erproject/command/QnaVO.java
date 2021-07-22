package com.erproject.command;



import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;




public class QnaVO {

	private int qna_No;
	private String qna_Writer;
	private String qna_Title;
	private String qna_Content;
	private String qna_MainCategori;
	private String qna_Tow; // 글 종류 ( 일반글, 비밀글 )
	private String qna_IsAnswer; // 답변 여부
	private String qna_View;
	private String qna_Regdate;
	private String qna_UpdateDate;
	

	public QnaVO() {
		
	}
	public QnaVO(int qna_No, String qna_Writer, String qna_Title, String qna_Content, String qna_MainCategori,
			String qna_Tow, String qna_IsAnswer, String qna_View, String qna_Regdate, String qna_UpdateDate) {
		super();
		this.qna_No = qna_No;
		this.qna_Writer = qna_Writer;
		this.qna_Title = qna_Title;
		this.qna_Content = qna_Content;
		this.qna_MainCategori = qna_MainCategori;
		this.qna_Tow = qna_Tow;
		this.qna_IsAnswer = qna_IsAnswer;
		this.qna_View = qna_View;
		this.qna_Regdate = qna_Regdate;
		this.qna_UpdateDate = qna_UpdateDate;
	}
	public int getQna_No() {
		return qna_No;
	}
	public void setQna_No(int qna_No) {
		this.qna_No = qna_No;
	}
	public String getQna_Writer() {
		return qna_Writer;
	}
	public void setQna_Writer(String qna_Writer) {
		this.qna_Writer = qna_Writer;
	}
	public String getQna_Title() {
		return qna_Title;
	}
	public void setQna_Title(String qna_Title) {
		this.qna_Title = qna_Title;
	}
	public String getQna_Content() {
		return qna_Content;
	}
	public void setQna_Content(String qna_Content) {
		this.qna_Content = qna_Content;
	}
	public String getQna_MainCategori() {
		return qna_MainCategori;
	}
	public void setQna_MainCategori(String qna_MainCategori) {
		this.qna_MainCategori = qna_MainCategori;
	}
	public String getQna_Tow() {
		return qna_Tow;
	}
	public void setQna_Tow(String qna_Tow) {
		this.qna_Tow = qna_Tow;
	}
	public String getQna_IsAnswer() {
		return qna_IsAnswer;
	}
	public void setQna_IsAnswer(String qna_IsAnswer) {
		this.qna_IsAnswer = qna_IsAnswer;
	}
	public String getQna_View() {
		return qna_View;
	}
	public void setQna_View(String qna_View) {
		this.qna_View = qna_View;
	}
	public String getQna_Regdate() {
		return qna_Regdate;
	}
	public void setQna_Regdate(String qna_Regdate) {
		this.qna_Regdate = qna_Regdate;
	}
	public String getQna_UpdateDate() {
		return qna_UpdateDate;
	}
	public void setQna_UpdateDate(String qna_UpdateDate) {
		this.qna_UpdateDate = qna_UpdateDate;
	}
	
	@Override
	public String toString() {
		return "QnaVO [qna_No=" + qna_No + ", qna_Writer=" + qna_Writer + ", qna_Title=" + qna_Title + ", qna_Content="
				+ qna_Content + ", qna_MainCategori=" + qna_MainCategori + ", qna_Tow=" + qna_Tow + ", qna_IsAnswer="
				+ qna_IsAnswer + ", qna_View=" + qna_View + ", qna_Regdate=" + qna_Regdate + ", qna_UpdateDate="
				+ qna_UpdateDate + "]";
	}
	
	

	private List<QnaAnswerVO> qnaAnswerList;

	
}
