package com.hotelManageSystem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotelManageSystem.dao.OrderMapper;
import com.hotelManageSystem.po.Order;
import com.hotelManageSystem.service.OrderService;

@Service
public class OrderServiceimpl implements OrderService{
	@Autowired
    private OrderMapper om;

	@Override
	public List<Order> selOrderByDate(String start_date, String end_date) {
		
		return om.selOrderByDate(start_date,end_date);
	}

	@Override
	public List<Order> selOrder() {
	return om.selOrder();
	}

	@Override
	public void pay(Order order) {
		om.pay(order);
		
	}

	@Override
	public int payWayChange(String payWay, String orderId) {
	
		return om.payWayChange(payWay, orderId);
	}

	@Override
	public int payStateChange(String orderId) {
		
		return om.payStateChange(orderId);
	}

	@Override
	public void delOrder(String orderId) {
		om.delOrder(orderId);
		
	}

	@Override
	public List<Order>  selOrderById(String orderId) {
		
		return om.selOrderById(orderId);
	}

	@Override
	public List<Order> selOrderByName(int userId) {
		
		return om.selOrderByName(userId);
	}
}
