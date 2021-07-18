package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FaqImageVO {

	private int fi_No;
	private int faq_No;
	private String fi_Path;
	private String fi_Name;
	
}
