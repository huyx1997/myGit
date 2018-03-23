package com.hotelManageSystem.po;

public class Order {
private String orderId;
private int userId;
private String roomId;
private String payState;
private int count;
private double price;
private double tolPrice;
private String start_date;
private  String end_date;
private String payWay;
private String userNumber;/*身份证号*/
private String orderName;/*订单人*/
public String getOrderId() {
	return orderId;
}
public void setOrderId(String orderId) {
	this.orderId = orderId;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getRoomId() {
	return roomId;
}
public void setRoomId(String roomId) {
	this.roomId = roomId;
}
public String getPayState() {
	return payState;
}
public void setPayState(String payState) {
	this.payState = payState;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public double getTolPrice() {
	return tolPrice;
}
public void setTolPrice(double tolPrice) {
	this.tolPrice = tolPrice;
}
public String getStart_date() {
	return start_date;
}
public void setStart_date(String start_date) {
	this.start_date = start_date;
}
public String getEnd_date() {
	return end_date;
}
public void setEnd_date(String end_date) {
	this.end_date = end_date;
}
public String getPayWay() {
	return payWay;
}
public void setPayWay(String payWay) {
	this.payWay = payWay;
}
public String getUserNumber() {
	return userNumber;
}
public void setUserNumber(String userNumber) {
	this.userNumber = userNumber;
}
public String getOrderName() {
	return orderName;
}
public void setOrderName(String orderName) {
	this.orderName = orderName;
}
@Override
public String toString() {
	return "Order [orderId=" + orderId + ", userId=" + userId + ", roomId="
			+ roomId + ", payState=" + payState + ", count=" + count
			+ ", price=" + price + ", tolPrice=" + tolPrice + ", start_date="
			+ start_date + ", end_date=" + end_date + ", payWay=" + payWay
			+ ", userNumber=" + userNumber + ", orderName=" + orderName + "]";
}


}
