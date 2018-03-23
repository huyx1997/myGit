package com.hotelManageSystem.dao;

import java.util.List;

import com.hotelManageSystem.po.Order;
import com.hotelManageSystem.po.Room;


public interface OrderMapper {
	 public List<Order> selOrderByDate(String start_date,String end_date);
	 public List<Order> selOrder();
	 public void pay(Order order);
	 public int payWayChange(String payWay,String orderId );
	 public int payStateChange(String orderId);
	 public void delOrder(String orderId);
	 public List<Order> selOrderById(String orderId);
	 public List<Order> selOrderByName(int userId);
	 
}
