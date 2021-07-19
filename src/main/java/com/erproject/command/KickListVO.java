package com.erproject.command;

import java.sql.Date;

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
	private Double location_x;
	private Double location_y;
	private String isRental;
	private Date rentalDate;
}
