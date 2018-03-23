package com.hotelManageSystem.service;

import java.util.List;

import com.hotelManageSystem.po.Order;

public interface OrderService {
	public List<Order> selOrderByDate(String start_date,String end_date);
	 public List<Order> selOrder();
	 public void pay(Order order);
	 public int payWayChange(String payWay,String orderId);
	 public int payStateChange(String orderId);
	 public void delOrder(String orderId);
	 public List<Order>  selOrderById(String orderId);
	 public List<Order> selOrderByName(int userId);
	 
}
