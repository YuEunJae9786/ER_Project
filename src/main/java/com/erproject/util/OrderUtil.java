package com.erproject.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderUtil {

	private String orderType;

	public OrderUtil() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderUtil(String orderType) {
		super();
		this.orderType = orderType;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	@Override
	public String toString() {
		return "OrderUtil [orderType=" + orderType + "]";
	}
	
<<<<<<< HEAD
	
	
=======
>>>>>>> 5d9c37c3e48de6d8f710bae96933053d2e6c9050
	
}
