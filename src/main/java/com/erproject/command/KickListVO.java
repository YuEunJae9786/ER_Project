package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class KickListVO {
	private int MarkNo;
	private String PCode;
	private String CCode;
	private String Location_X;
	private String Loaction_y;
	private String IsRental;
}
