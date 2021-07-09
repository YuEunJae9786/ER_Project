package com.erproject.command;

import java.sql.Timestamp;

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
	private Timestamp faq_Regdate;
	private Timestamp faq_UpdateDate;
	
}
