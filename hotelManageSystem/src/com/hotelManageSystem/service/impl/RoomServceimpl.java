package com.hotelManageSystem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotelManageSystem.dao.RoomMapper;
import com.hotelManageSystem.po.Room;
import com.hotelManageSystem.service.RoomService;

@Service
public class RoomServceimpl implements RoomService {
	@Autowired
    private RoomMapper rm;

	@Override
	public void addRoom(Room room) {
	rm.addRoom(room);
		
	}

	@Override
	public List<Room> selRoom() {
		
		return rm.selRoom();
	}

	@Override
	public Room selRoomById(String roomId) {
	
		return rm.selRoomById(roomId);
	}

	@Override
	public List<Room> selRoomlimit() {
	
		return rm.selRoomlimit();
	}

}
