package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class KickListVO {
	private int markNo;
	private String pCode;
	private String cCode;
	private String location_x;
	private String location_y;
	private String isRental;
}
