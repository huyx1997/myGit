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
    
    <title>My JSP 'order1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
  <div style="height:57px;width:200px;padding:9px;float:left" >
  
   <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="#">首页</a></li>
  <li role="presentation"><a href="<%=request.getContextPath()%>/selRoom.do">预定房间</a></li>
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
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">尊敬的顾客：<%=session.getAttribute("name")%></a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>

<div style="height:100px;width:1200px;margin:1px auto;text-align:center;padding:30px">
	<img src="image/order_proce.png">
	</div>
	
<div style="height:800px;width:900px;margin:1px auto">
<div style="height:100px;width:890px;margin:2px;background-color:#0099CC;padding:4px">
<div style="height:90px;width:150px;margin-left:60px;float:left">
<img alt="用户头像" style="height:90px;width:90px; "src="image/b2.ico">
</div>
<div style="height:90px;width:400px;float:left">
<div style="height:40px;width:200px;float:left;margin-top:8px">
<a style="font-size:18px;text-decoration:none;color:white"><b>尊敬的用户&nbsp;:</b></a>
<a style="font-size:18px;text-decoration:none;color:white"><b><%=session.getAttribute("name")%></b></a>
</div>
<div style="height:40px;width:400px;float:left">
<a style="font-size:13px;text-decoration:none;color:white"><b>用户等级&nbsp;:&nbsp;</b></a>
<a style="font-size:13px;text-decoration:none;color:white"><b>${user.userLevel }</b></a>
<a style="font-size:13px;text-decoration:none;color:white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会员积分&nbsp;：</a>
<a style="font-size:13px;text-decoration:none;color:white">${user.score }</a>
</div>

</div>





</div>


<div style="margin-top:20px;height:560px;width:890px;margin-top:15px;background-color:white">
<div style="height:40px;width:890px;padding-top:4px;padding-left:80px">
<div style="height:35px;width:200px;background-color:white;padding-top:4px;float:left">
<a style="font-size:18px;color:#0099CC;text-decoration:none">我的订单</a>
</div>
<div style="height:35px;width:200px;background-color:white;padding-top:4px;float:left">
<a style="font-size:18px;color:black;text-decoration:none">未出行</a>
</div>
<div style="height:35px;width:200px;background-color:white;padding-top:4px;float:left">
<a style="font-size:18px;color:black;text-decoration:none">待付款</a>
</div>
<div style="height:35px;width:200px;background-color:white;padding-top:4px;float:left">
<a style="font-size:18px;color:black;text-decoration:none">待评价</a>
</div>


</div>
<!-- 显示条 -->
<div style="height:2px;width:890px">
<div style="height:2px;width:20px;background-color:white;float:left"></div>
<div style="height:2px;width:190px;background-color:#0099CC;float:left"></div>
<div style="height:2px;width:870px;background-color:white;float:left"></div>
</div>

<div style="height:400px;width:890px;background-color:white">

<!-- 表格的头 -->
<div style="height:31px;width:890px;margin-top:10px">
<div style="height:31px;width:818px;background-color:gray;margin-left:3px">
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">订单编号</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">房间数量</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">入住姓名</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">入住时间</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">离店时间</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">支付方式</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">支付总价</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">订单状态</a>
</div>
</div>

</div>
<c:forEach items="${list }" var="order">
<div style="height:31px;width:890px;margin-top:1px;">
<div style="height:31px;width:818px;background-color:gray;margin-left:3px;float:left">
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.orderId}</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.count }</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px"></a>
<a style="font-size:13px;text-decoration:none;color:black">${order.orderName }</a>

</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.start_date }</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.end_date }</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.payWay }</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.tolPrice }</a>
</div>
<div style="height:30px;width:100px;background-color:white;margin-left:2px;float:left;padding-left:23px;padding-top:5px">
<a style="font-size:13px;text-decoration:none;color:black">${order.payState}</a>
</div>

</div>

<div style="height:30px;width:50px;background-color:white;margin-left:2px;float:left;padding-top:5px">
<a style="font-size:15px;text-decoration:none;color:red" href="<%=request.getContextPath()%>/delOrder.do?orderId=${order.orderId}">删除</a>
</div>

<!-- 如果未入住 则可以取消订单  new一个超链接




-->



</div>
</c:forEach>


</div>




</div>




</div>

<div style="width:100%;height:57px;background-color:#082E54;position:absolute;top:900px;">
   <!-- 底端条条 -->
   <div style="width:400px;height:50px;background-color:#082E54;margin:0px auto">
   <div style="width:400px;height:15px;margin:0px auto;margin-top:5px">
   <a style="font-size:14px;color:white;text-decoration:none">华住会介绍    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;酒店加盟 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;职位招聘 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;意见反馈 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系我们</a>
   </div>
   
   <div style="width:400px;height:15px;margin:0px auto;margin-top:18px;padding-left:5px">
   <a style="font-size:11px;color:white;text-decoration:none">沪ICP备12041475 | ©2017 Huazhu All Rights reserved. 华住酒店管理有限公司</a>
   
   </div>
   
   </div>
   
   
   </div>

</div>
  </body>
</html>
