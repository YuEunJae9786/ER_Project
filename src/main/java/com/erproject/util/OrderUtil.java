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
	
	public OrderUtil() {
	
	}
	public OrderUtil(String orderType, String listOrder, String searchType, String searchName) {
		super();
		this.orderType = orderType;
		this.listOrder = listOrder;
		this.searchType = searchType;
		this.searchName = searchName;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getListOrder() {
		return listOrder;
	}
	public void setListOrder(String listOrder) {
		this.listOrder = listOrder;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	@Override
	public String toString() {
		return "OrderUtil [orderType=" + orderType + ", listOrder=" + listOrder + ", searchType=" + searchType
				+ ", searchName=" + searchName + "]";
	}
	
	

	

	
}
