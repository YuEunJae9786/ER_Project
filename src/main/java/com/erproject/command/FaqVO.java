package com.erproject.command;

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
	
}
