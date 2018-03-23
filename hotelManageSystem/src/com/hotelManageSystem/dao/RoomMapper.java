package com.hotelManageSystem.dao;

import java.util.List;

import com.hotelManageSystem.po.Room;





public interface RoomMapper {
	 public void addRoom(Room room);
	 public List<Room> selRoom();
	 public List<Room> selRoomlimit();
	 public Room selRoomById(String roomId);

}
