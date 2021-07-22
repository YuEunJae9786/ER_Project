package com.erproject.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FaqVO {

	private int faq_No;
	private String faq_Writer;
	private String faq_Title;
	private String faq_Content;
	private String faq_View;
	private String faq_MainCategori;
	private String faq_Regdate;
	private String faq_UpdateDate;
	public FaqVO() {
	
	}
	public FaqVO(int faq_No, String faq_Writer, String faq_Title, String faq_Content, String faq_View,
			String faq_MainCategori, String faq_Regdate, String faq_UpdateDate) {
		super();
		this.faq_No = faq_No;
		this.faq_Writer = faq_Writer;
		this.faq_Title = faq_Title;
		this.faq_Content = faq_Content;
		this.faq_View = faq_View;
		this.faq_MainCategori = faq_MainCategori;
		this.faq_Regdate = faq_Regdate;
		this.faq_UpdateDate = faq_UpdateDate;
	}
	public int getFaq_No() {
		return faq_No;
	}
	public void setFaq_No(int faq_No) {
		this.faq_No = faq_No;
	}
	public String getFaq_Writer() {
		return faq_Writer;
	}
	public void setFaq_Writer(String faq_Writer) {
		this.faq_Writer = faq_Writer;
	}
	public String getFaq_Title() {
		return faq_Title;
	}
	public void setFaq_Title(String faq_Title) {
		this.faq_Title = faq_Title;
	}
	public String getFaq_Content() {
		return faq_Content;
	}
	public void setFaq_Content(String faq_Content) {
		this.faq_Content = faq_Content;
	}
	public String getFaq_View() {
		return faq_View;
	}
	public void setFaq_View(String faq_View) {
		this.faq_View = faq_View;
	}
	public String getFaq_MainCategori() {
		return faq_MainCategori;
	}
	public void setFaq_MainCategori(String faq_MainCategori) {
		this.faq_MainCategori = faq_MainCategori;
	}
	public String getFaq_Regdate() {
		return faq_Regdate;
	}
	public void setFaq_Regdate(String faq_Regdate) {
		this.faq_Regdate = faq_Regdate;
	}
	public String getFaq_UpdateDate() {
		return faq_UpdateDate;
	}
	public void setFaq_UpdateDate(String faq_UpdateDate) {
		this.faq_UpdateDate = faq_UpdateDate;
	}
	@Override
	public String toString() {
		return "FaqVO [faq_No=" + faq_No + ", faq_Writer=" + faq_Writer + ", faq_Title=" + faq_Title + ", faq_Content="
				+ faq_Content + ", faq_View=" + faq_View + ", faq_MainCategori=" + faq_MainCategori + ", faq_Regdate="
				+ faq_Regdate + ", faq_UpdateDate=" + faq_UpdateDate + "]";
	}
	
	
	
	private List<FaqImageVO> faqImageList;
	
	private List<MultipartFile> file;
	
}