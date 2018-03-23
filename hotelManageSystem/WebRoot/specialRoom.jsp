<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<% 

Date date=new Date();
  DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String dateTime=format.format(date);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'specialCar.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js">
	
</script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
 <script type="text/javascript">
    function login(){
	window.location.href="login.jsp";
	
	}
	function regist(){
	window.location.href="register.jsp";
	
	}
	
	
    </script>

</head>

<body>
	<div style="background-color:#DCDCDC">
   <div style="height:57px;background-color:#082E54">
  <div style="height:57px;width:300px;padding:9px;float:left" >
  
   <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="first.jsp">首页</a></li>
  <li role="presentation"><a href="<%=request.getContextPath()%>/selRoom.do">预定房间</a></li>
    <li role="presentation"><a href="<%=request.getContextPath()%>/userCenter.do">个人中心</a></li>
  
</ul></div>

<div style="height:57px;width:250px;padding:12px;float:right">
<span class="glyphicon glyphicon-earphone" style="color:#cccccc" aria-hidden="true"></span>
<a style="font-size:20px;color:#cccccc;text-decoration:none">&nbsp;&nbsp;400-825-825</a>

</div>

<div style="height:57px;width:120px;float:right;padding:8px">

<button type="button" class="btn btn-link">
				<a style="font-size:15px;color: #cccccc"
					href="<%=request.getContextPath()%>/selMyCar.do">酒店电话</a>
			</button>


</div>



<div style="height:57px;width:150px;padding:8px;float:right" >
 
<%
  Object object = session.getAttribute("name");
  if(object !=null){
  
  %>
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">尊贵的顾客：<%=session.getAttribute("name")%>  </a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>
	<!-- 以上是头 -->

	<div style="height:150px;width:1354px;margin:2px auto;background-color:white">
	<div style="height:150px;width:800px;float:left">
	
		<form action="selOrderByDate.do" method="post"   enctype="application/x-www-form-urlencoded">
		
	<div class="input-group" style="height:50px;width:500px;margin-left:50px;margin-top:20px;">
  	<span class="input-group-addon" style="width:70px;height:20px;" id="basic-addon1">入住时间</span>
  	<input  style="width:150px;height:30px;" type="date" name="start_date" />  
    <br><br>  
	</div>
	<div class="input-group" style="height:50px;width:500px;margin-left:50px;margin-top:10px">
  	<span class="input-group-addon" style="width:70px;height:20px;" id="basic-addon1">离开时间</span>
  	<input  style="width:150px;height:30px;" type="date" name="end_date" />  	
  	<input type="submit" class="btn btn-warning btn-lg" value="查询房间">
  	<br>
  	
 
  	
	</div>

	</form>
	

	
	
	</div></div>
	
	<div style="height:1000px;width:1354px;background-color:#DCDCDC;margin-top:10px">
	<div style="height:990px;width:1300px;margin:20px auto;margin-top:10px">
	<div style="height:990px;width:350px;background-color:white;position:absolute;left:85px;">
	<div style="height:25px;width:250px;margin:20px">
	<a style="font-size:15px;color:black;text-decoration:none">房型</a>
	</div>
	<div style="height:300px;width:270px;background-color:white">
	<div style="height:100px;width:270px;background-color:">
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">大床房</a>
	<img  style="width:60px;height:60px; "alt="大床房" src="image/4.jpg">
	</div>
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">双床房</a>
	<img  style="width:60px;height:60px; "alt="大床房" src="image/standard.jpg">
	</div>
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">家庭房</a>
	<img  style="width:60px;height:60px; "alt="大床房" src="image/family.jpg">
	</div>
	</div>
	<div style="height:100px;width:270px;background-color:">
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">圆床房</a>
<img  style="width:60px;height:60px; "alt="大床房" src="image/round.jpg">	</div>
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">主题房</a>
	<img  style="width:60px;height:60px; "alt="大床房" src="image/topic.jpg">
	</div>
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">特价房</a>
	<img  style="width:60px;height:60px; "alt="大床房" src="image/3.jpg">
	</div>
	</div>
	<div style="height:100px;width:270px;background-color:">
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">麻将房</a>
		<img  style="width:60px;height:60px; "alt="大床房" src="image/play.jpg">
	</div>
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">总统套房</a>
		<img  style="width:60px;height:60px; "alt="大床房" src="image/top.jpg">
	</div>
	<div style="height:100px;width:90px;float:left;text-align:center">
	<a style="font-size:12px;color:#A9A9A9">商务套房</a>
		<img  style="width:60px;height:60px; "alt="大床房" src="image/business.jpg">
	</div>
	</div>
	</div>
	
	</div>
	<div style="height:1000px;width:915px;margin-left:8px;position:absolute;left:450px;background-color:gray">
	<!-- 右侧栏 -->
	<c:forEach items="${list }" var="room">
	<div style="height:200px;width:910px;margin:2px;background-color:white;margin:2px;padding:4px">
	<div style="height:190px;width:20px;background-color:white;float:left;margin:1px"></div>
	<div style="height:190px;width:245px;background-color:white;float:left;margin:1px">
	<!-- 占位 -->
	<div style="height:10px;width:245px;background-color:white"></div>
	<img src="image/${room.img}" height="150px" width="220px">
	</div>
	<div style="height:190px;width:280px;background-color:white;float:left;margin:1px">
	<div style="height:43px;width:280px;background-color:white"></div>
	<a style="font-size:18px;text-decoration:none;color:black">${room.type }</a><br>
	<a style="font-size:12px;text-decoration:none;color:gray">剩余数量：${room.count }</a>
	<a style="font-size:12px;text-decoration:none;color:gray">|</a>
	<a style="font-size:12px;text-decoration:none;color:gray">${room.price }</a>
	<a style="font-size:12px;text-decoration:none;color:gray">|</a>
	<a style="font-size:12px;text-decoration:none;color:gray">预定状态</a>
	<a style="font-size:12px;text-decoration:none;color:gray">否</a>
	<a style="font-size:12px;text-decoration:none;color:gray"></a>
	
	</div>
	<!-- 门店支付 -->
	<div style="height:190px;width:14px;background-color:white;float:left;margin:1px">
	<div style="height:61px;width:14px;background-color:white"></div>
	<div style="height:61px;width:14px;text-align:center;background-color:#DCDCDC">
	<a style="color:gray;font-size:11px">门</a><br>
	<a style="color:gray;font-size:11px">店</a><br>
	<a style="color:gray;font-size:11px">支</a><br>
	<a style="color:gray;font-size:11px">付</a><br>
	
	</div>
	<div style="height:67px;width:14px;background-color:white"></div>
	
	</div>
	<div style="height:190px;width:15px;background-color:white;float:left;margin:1px"></div>
	<!-- 价格 -->
	<div style="height:190px;width:150px;background-color:white;float:left;margin:1px">
	<div style="height:60px;width:150px;backgroung-color:white"></div>
	<div style="height:50px;width:150px">
	<a style="font-size:25px;color:#FF9900">¥</a><a style="font-size:30px;color:#FF9900">&nbsp;${room.price }</a>
	<a style="font-size:12px;color:gray">/日均</a>
	</div>
	</div>
	<div style="height:190px;width:150px;background-color:white;float:left;margin:1px">
	<div style="height:63px;width:150px;background-color:white"></div>
	<div style="height:50px;width:150px">
	<a href="<%=request.getContextPath()%>/selRoomById.do?roomId=${room.roomId}"><input type="button" class="btn btn-warning btn-lg" value="预定房间"></a>
	</div>
	</div>
	</div>
	
	</c:forEach>
	
	</div>

	
	</div>
	
	
	</div>

	</div>
	
	

	
	
	
</body>
</html>
