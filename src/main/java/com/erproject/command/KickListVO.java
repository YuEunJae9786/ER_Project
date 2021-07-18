package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class KickListVO {
	private int markNo;
	private String PCode;
	private String CCode;
	private String Location_x;
	private String Location_y;
	private String IsRental;
}
