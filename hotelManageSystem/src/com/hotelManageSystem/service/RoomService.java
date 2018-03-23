package com.hotelManageSystem.service;

import java.util.List;

import com.hotelManageSystem.po.Room;



public interface RoomService {
	 public void addRoom(Room room);
	 public List<Room> selRoom();
	 public Room selRoomById(String roomId);
	 public List<Room> selRoomlimit();
}
