package com.erproject.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderUtil {

	private String orderType; // 순서
	private String listOrder; // 대분류
	private String searchType; // 검색타입
	private String searchName; // 검색이름
	
}
