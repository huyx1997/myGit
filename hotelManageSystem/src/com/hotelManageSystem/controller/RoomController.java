package com.hotelManageSystem.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hotelManageSystem.po.Room;
import com.hotelManageSystem.service.RoomService;



@Controller

public class RoomController {
	@Autowired
	  private RoomService roomServ;
	
	  @RequestMapping("addRoom.do")
	  public String addRoom(Room room,MultipartFile myFile,HttpServletRequest req) throws Exception{
		  String name=myFile.getOriginalFilename();
		  
		//时间戳
		 String sj = new SimpleDateFormat("yyyyMMddhhmmss").format(new Date());
		 String imgName = sj+name;//新的图片名
		 
		 String tomcatPath = req.getSession().getServletContext().getRealPath("/");//工程在tomcat上的路径
		 
		 File file = new File(tomcatPath+"image/"+imgName);
		 
		 myFile.transferTo(file);
		 
		 room.setImg(imgName);
		 
		 
		 roomServ.addRoom(room);
		  return "manager/manager.jsp";
		  
		  
	  } 
	  
	 @RequestMapping("selRoom.do")
	  public ModelAndView selRoom(){
		  List<Room> list=roomServ.selRoomlimit();
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("list", list);
		
		  mav.setViewName("specialRoom.jsp");
		  return mav;
		  
	  }
	 @RequestMapping("selRoomlimit.do")
	  public ModelAndView selRoomlimit(){
		  System.out.print("aaa");
		  List<Room> list=roomServ.selRoomlimit();
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("list", list);
		  mav.setViewName("manager/showRoom.jsp");
		  return mav;
		  
	  }
	 @RequestMapping("selRoomById.do")
	  public ModelAndView sel_booksById(String roomId){
		 Room room= roomServ.selRoomById(roomId);
		  
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("room", room);
		  mav.setViewName("order.jsp");
		  return mav;
		  
	  }
	 
	 
	 
}
