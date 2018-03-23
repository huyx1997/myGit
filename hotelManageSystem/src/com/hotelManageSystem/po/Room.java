package com.hotelManageSystem.po;

public class Room {
private String roomId;
private  double price;
private String type;
private String img;
private int count;
public String getRoomId() {
	return roomId;
}
public void setRoomId(String roomId) {
	this.roomId = roomId;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getImg() {
	return img;
}
public void setImg(String img) {
	this.img = img;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
@Override
public String toString() {
	return "Room [roomId=" + roomId + ", price=" + price + ", type=" + type
			+ ", img=" + img + ", count=" + count + "]";
}


}
