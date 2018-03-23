<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js">
</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" 
integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div style="height:57px;background-color:#082E54">
  <div style="height:57px;width:400px;padding:9px;float:left" >
  
   <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="manager/manager.jsp">首页</a></li>
  <li role="presentation"><a href="<%=request.getContextPath()%>/manager/addRoom.jsp">添加房间</a></li>
    <li role="presentation"><a href="<%=request.getContextPath()%>/selRoomlimit.do">房间查看</a></li>
  <li role="presentation"><a href="<%=request.getContextPath()%>/selOrder.do">订单查看</a></li>
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
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">Elan欢迎你  </a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>

  
<br>
<br>

   	
	<!-- 右侧栏 -->
	<div style="height:5px;width:955px;margin-left:188px;position:absolute;left:0px;background-color:gray"></div>
	<c:forEach items="${list }" var="order">
	<div style="height:200px;width:955px;margin-left:188px;background-color:gray">
	<div style="height:200px;width:950px;margin:2px;background-color:white;margin:2px;padding:4px">
	<div style="height:190px;width:20px;background-color:white;float:left;margin:1px"></div>
	<div style="height:190px;width:495px;background-color:white;float:left;margin:1px">
	<!-- 占位 -->
	<div style="height:190px;width:300px;background-color:white;float:left;margin:1px">
	<div style="height:43px;width:280px;background-color:white"></div>
	<a style="font-size:15px;text-decoration:none;color:black">订单号码：${order.orderId }</a><br>
	<a style="font-size:18px;text-decoration:none;color:black">入住人:${order.orderName }</a><br>
	<a style="font-size:12px;text-decoration:none;color:gray">支付状态：${order.payState }|</a>
	<a style="font-size:12px;text-decoration:none;color:gray">总金额￥</a>
	<a style="font-size:12px;text-decoration:none;color:gray">${order.tolPrice }元</a>
	<a style="font-size:12px;text-decoration:none;color:gray">|</a>
	<a style="font-size:12px;text-decoration:none;color:gray">支付方式：${order.payWay}</a>
	<br>
	<a style="font-size:12px;text-decoration:none;color:gray">入住日期：${order.start_date }</a>
	<a style="font-size:12px;text-decoration:none;color:gray">离店日期：${order.end_date }</a>
	</div>
	</div>
	<!-- 门店支付 -->
	
	<div style="height:190px;width:15px;background-color:white;float:left;margin:1px"></div>
	<!-- 价格 -->
	<div style="height:190px;width:150px;background-color:white;float:left;margin:1px">
	<div style="height:60px;width:150px;backgroung-color:white"></div>
	<div style="height:50px;width:150px">
	<a style="font-size:25px;color:#FF9900">¥</a><a style="font-size:30px;color:#FF9900">&nbsp;${order.price }</a>
	<a style="font-size:12px;color:gray">/日均</a>
	</div>
	</div>
	<div style="height:190px;width:150px;background-color:white;float:left;margin:1px">
	<div style="height:63px;width:150px;background-color:white"></div>
	<a href="<%=request.getContextPath()%>/selRoomById.do?roomId=${room.roomId}"><input type="button" class="btn btn-warning btn-lg" value="打印凭条"></a>
	
	</div>
	
	</div>
	</div>
		<div style="height:5px;width:955px;margin-left:188px;position:absolute;left:0px;background-color:gray"></div>
	</c:forEach>
	
	
     <br>
  </body>
</html>
