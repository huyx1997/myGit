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
					href="<%=request.getContextPath()%>/selMyCar.do">我的酒店</a>
			</button>


</div>



<div style="height:57px;width:150px;padding:8px;float:right" >
 
<%
  Object object = session.getAttribute("name");
  if(object !=null){
  
  %>
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">尊贵的顾客： <%=session.getAttribute("name")%>  </a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>

<div style="height:100px;width:1200px;margin:1px auto;text-align:center;padding:30px">
	<img src="image/liucheng.png" height="50px" width="845px">
	</div>
	
<div style="height:800px;width:900px;margin:1px auto">
<div style="height:100px;width:890px;margin:2px;background-color:white;padding:4px">
<div style="height:90px;width:150px;margin-left:290px;float:left">
<img alt="支付方式" style="height:90px;width:90px; "src="image/b16.ico">
</div>
<div style="height:90px;width:200px;float:left;padding-top:29px">
<a style="font-size:25px;text-decoration:none;color:black">支付成功</a>
</div>





</div>


<div style="margin-top:20px;height:560px;width:890px;margin-top:15px">
<div style="height:22px;width:890px;background-color:#CCFFCC;padding-top:2px">
<a style="font-size:15px;color:black;text-decoration:none">订单信息</a>
</div>
<div style="margin-top:20px;height:360px;width:890px;background-color:white;margin-top:1px">
<!-- 订单信息 -->
<div style="height:350px;width:670px;float:left;padding-left:30px">
<div style="height:110px;width:650px;margin-top:5px">
<img alt="支付方式" style="height:110px;width:450px; "src="image/yilai.png">
</div>
<div style="height:300px;width:650px;margin-top:5px">
<c:forEach items="${list }" var="order">
<div style="height:120px;width:640px;margin-top:5px">

<div style="height:117px;width:420px;float:left">

<div style="height:25px;width:420px;background-color:white;margin-top:2px;padding-top:2px">
<a style="font-family:微软雅黑;color:black;text-decoration:none">订单号&nbsp;:</a>
<a style="font-family:微软雅黑;color:black;text-decoration:none">  <%=session.getAttribute("codeNumber")%></a>
</div>
<div style="height:25px;width:420px;background-color:white;margin-top:2px;padding-top:2px">
<a style="font-family:微软雅黑;color:black;text-decoration:none">预定人姓名&nbsp;:</a>
<a style="font-family:微软雅黑;color:black;text-decoration:none">${order.orderName }</a>
</div>

<div style="height:25px;width:420px;background-color:white;margin-top:2px;padding-top:2px">
<a style="font-family:微软雅黑;color:black;text-decoration:none">预订方式&nbsp;:</a>
<a style="font-family:微软雅黑;color:black;text-decoration:none">网上预订</a>
</div>
<div style="height:25px;width:420px;background-color:white;margin-top:2px;padding-top:2px">
<a style="font-family:微软雅黑;color:black;text-decoration:none">支付方式&nbsp;:</a>
<a style="font-family:微软雅黑;color:black;text-decoration:none">${order.payWay }</a>
</div>

</div>
<div style="height:80px;width:200px;margin-top:20px;margin-left:10px;float:left">

<div style="height:60px;width:55px;background-color:white;float:left">
<div style="height:20px;width:200px;"></div>
<a style="font-size:15px;color:black;text-decoration:none">总金额&nbsp;:</a>
</div>
<div style="height:60px;width:10px;background-color:white;float:left">
<div style="height:20px;width:200px;"></div>
<a style="font-size:15px;color:black;text-decoration:none">¥</a>
</div>
<div style="height:60px;width:130px;background-color:white;float:left;margin-left:2px">
<div style="height:10px;width:200px;"></div>
<a style="font-size:25px;color:#FF9900;text-decoration:none">&nbsp;:${order.tolPrice }</a>
</div>

</div>







</div>
<div style="height:2px;width:640px;background-color:gray"></div>

<div style="height:70px;width:640px;margin-top:5px">
<div style="height:25px;width:440px;background-color:white;margin-top:2px;padding-top:2px">
<a style="font-family:微软雅黑;color:black;text-decoration:none">入住日期&nbsp;:</a>
<a style="font-family:微软雅黑;color:black;text-decoration:none">${order.start_date }</a>
</div>
<div style="height:25px;width:440px;background-color:white;margin-top:2px;padding-top:2px">
<a style="font-family:微软雅黑;color:black;text-decoration:none">离店日期&nbsp;:</a>
<a style="font-family:微软雅黑;color:black;text-decoration:none">${order.end_date }</a>
</div>
</div>
</c:forEach>

</div>
</div>

<div style="height:350px;width:200px;margin-left:20px;float:left">
<div style="height:50px;width:200px;margin-top:120px;background-color:white;padding-left:39px">
<form action="selRoom.do" method="post" enctype="application/x-www-form-urlencoded">
<input type="submit" class="btn btn-primary" value="再次预订">
</form>
</div>
<div style="height:50px;width:200px;margin-top:20px;background-color:white;padding-left:39px">
<form action="delOrder.do" method="post" enctype="application/x-www-form-urlencoded">
<input type="submit" class="btn btn-primary" value="取消订单">
</form>
</div>
<div style="height:50px;width:200px;margin-top:20px;background-color:white;padding-left:39px">
<form action="first.jsp" method="post">
<input type="submit" class="btn btn-primary" value="返回主页">
</form>
</div>

</div>
</div>




</div>








</div>
  </body>
</html>
