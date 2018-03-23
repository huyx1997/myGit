package com.hotelManageSystem.controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotelManageSystem.po.Order;
import com.hotelManageSystem.po.User;
import com.hotelManageSystem.service.OrderService;
import com.hotelManageSystem.service.UserService;




@Controller
public class UserContorller {
	@Autowired
	private UserService userServ;
	@Autowired
	  private OrderService orderServ;
	
	@RequestMapping("selUserById.do")
	public ModelAndView selUserById(String username,HttpServletRequest request){
		//System.out.println("进入mav");
		User user = userServ.selUserById(username);
		System.out.println("输入的用户名"+user);
    	String ps = request.getParameter("password");
    	//System.out.println(ps);
    	String password = user.getPassWord();
    	int us = user.getUserId();
    	String name=user.getUserName();
    	//System.out.println(password);
		ModelAndView mav =new ModelAndView();
		//验证密码
		if(ps.equals(password)){
			
			HttpSession session = request.getSession();
			session.setAttribute("us", us);
			session.setAttribute("name", name);
			mav.setViewName("first.jsp");
		}else{
			mav.setViewName("fail.jsp");
		}
		
		return mav ;
		
	}
	@RequestMapping("selUserCount.do")
	public ModelAndView selUserCount(){
		ModelAndView mav =new ModelAndView();
		int count = userServ.selUserCount();
		mav.addObject("count", count);
		System.out.println(count);
		mav.setViewName("test.jsp");
		return mav;
		
		
	}
	@RequestMapping("userCenter.do")
	  public ModelAndView userCenter(HttpSession session){
		  
		  
		  ModelAndView mav=new ModelAndView();
		  Object object = session.getAttribute("us");
		  System.out.println("-------"+object);
		  if(object == null){
		  
		  mav.setViewName("unlogin.jsp");}
		  else{
			  User user= userServ.userCenter((Integer)session.getAttribute("us"));
			  List<Order> list=orderServ.selOrderByName((Integer)session.getAttribute("us"));
			  mav.addObject("user", user);
			  mav.addObject("list", list);
			  mav.setViewName("MyHome.jsp");
		  }
		  return mav;
		  
	  }

	
	
	  @RequestMapping("addUser.do")
		public String addPeople(User user,HttpServletRequest req,HttpSession session){
		  //自动生成会员编号
		  User us=new User();
		  List<Integer> randNum = new LinkedList<Integer>();
		   List<String>codes=new LinkedList<String>();
				
				for (int j = 0; j < 4; j++) {
					randNum.add((int) (Math.random() * 10));
				}
				String code="";
				for(int k=0;k<randNum.size();k++){
					 code=code+randNum.get(k);
				}
				 
				codes.add(code);
				code="";
				randNum.clear();
				int codeNumber=Integer.parseInt(codes.get(0)); 
		
			
			us.setUserId(codeNumber);
			us.setEmail(user.getEmail());
			us.setPassWord(user.getPassWord());
			us.setPhoneNumber(user.getPhoneNumber());
			us.setScore(0);
			us.setUserLevel(0);
			us.setUserName(user.getUserName());
			
			userServ.addUser(us);
			//修改session中的账号存在标志
			session.setAttribute("us", codeNumber);
			session.setAttribute("name", user.getUserName());
			return "first.jsp";
			
		}
		

}
