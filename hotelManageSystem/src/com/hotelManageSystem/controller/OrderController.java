package com.hotelManageSystem.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hotelManageSystem.po.Order;
import com.hotelManageSystem.po.Room;
import com.hotelManageSystem.service.OrderService;
import com.hotelManageSystem.service.RoomService;
import com.hotelManageSystem.service.UserService;




@Controller
public class OrderController {
	@Autowired
	  private OrderService orderServ;
	@Autowired
	  private RoomService roomServ;
	@Autowired
	  private UserService userServ;
	
	@RequestMapping("selOrderByDate.do")
	public ModelAndView selOrderByDate(String start_date,String end_date,HttpServletRequest request){
	int day1=Integer.parseInt(start_date.substring(8, 10));
	int day2=Integer.parseInt(end_date.substring(8, 10));
	int count=day2-day1;
	ModelAndView mav=new ModelAndView();
	 HttpSession session = request.getSession();
	session.setAttribute("start_date", start_date);
	session.setAttribute("end_date", end_date);
	session.setAttribute("count", count);
	      List<Room> list=roomServ.selRoom();
		  mav.addObject("list", list);
		  mav.setViewName("specialRoom.jsp");
		  return mav;
		  
	}
	
	@RequestMapping("pay.do")
	public String pay(Order order,String roomId,HttpSession session){
		Double total;
		String toPrice;
		List<Integer> randNum = new LinkedList<Integer>();
		   List<String>codes=new LinkedList<String>();
				
				for (int j = 0; j < 6; j++) {
					randNum.add((int) (Math.random() * 10));
				}
				String code="";
				for(int k=0;k<randNum.size();k++){
					 code=code+randNum.get(k);
				}
				 
				codes.add(code);
				code="";
				randNum.clear();
				String codeNumber=codes.get(0); 
		 
		 Order or=new Order();
		 or.setOrderId(codeNumber);
		 Room room=roomServ.selRoomById(roomId);
		 or.setPrice(room.getPrice());
		 or.setRoomId(roomId);
		 or.setUserId((Integer)session.getAttribute("us"));
		 int userLevel=userServ.selUserById((String)session.getAttribute("name")).getUserLevel();
		 if(userLevel==0){
		  total=room.getPrice()*order.getCount();}
		 else if(userLevel==1)
		 { toPrice=Double.toString(room.getPrice()*order.getCount()*0.9).substring(0, 5);
		    total=Double.parseDouble(toPrice);
		 }	
		 else 
			 {toPrice=Double.toString(room.getPrice()*order.getCount()*0.7).substring(0, 5);
			 total=Double.parseDouble(toPrice);
			 }
		 or.setTolPrice(total);
		 or.setEnd_date(order.getEnd_date());
		 or.setStart_date(order.getStart_date());
		 or.setCount(order.getCount());
		 or.setOrderName(order.getOrderName());
		 or.setUserNumber(order.getUserNumber());
	
		 orderServ.pay(or);
	    session.setAttribute("codeNumber", codeNumber);
		  return "order1.jsp";
		  
		  
	}
	
	@RequestMapping("payWayChange.do")
    public String  payWayChange(String payWay,HttpSession session){
		String orderId=(String)session.getAttribute("codeNumber");
		int userId=(Integer)session.getAttribute("us");
		String userName=(String)session.getAttribute("name");
		int score=userServ.selUserById(userName).getScore();
		System.out.println("aaaaaaaaaaaaaaaaaaa***"+orderId+"********************"+payWay);
		System.out.println("bb***"+score);
		score=score+20;
		int m=userServ.userLevelChange(score,userId);
	    int i= orderServ.payWayChange(payWay,orderId);
	    int j=orderServ.payStateChange(orderId);
	    
	   return "selOrderById.do";
}  
	
	  @RequestMapping("selOrderById.do")
	  public ModelAndView selOrderById(HttpSession session){
		  String orderId=(String)session.getAttribute("codeNumber");
		   List<Order> list= orderServ.selOrderById(orderId);
		   ModelAndView mav=new ModelAndView();
		  mav.addObject("list", list);
		  mav.setViewName("paySuccess.jsp");
		  return mav;
		  
	  }
	//ÍË·¿
	@RequestMapping("delOrder.do")
	public String delOrder(HttpSession session){
		String orderId=(String)session.getAttribute("codeNumber");
		orderServ.delOrder(orderId);
		return "first.jsp";
	}
	
	@RequestMapping("selOrder.do")
	public ModelAndView selOrder(){
		  List<Order> list=orderServ.selOrder();
		  ModelAndView mav=new ModelAndView();
		  mav.addObject("list", list);
		  mav.setViewName("manager/showOrder.jsp");
		  return mav;
		  
	}
	
}
