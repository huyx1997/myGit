<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">尊贵的顾客: <%=session.getAttribute("name")%>  </a></button>
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
<div style="height:150px;width:890px;margin:2px;background-color:white;padding:4px">
<img alt="支付方式" style="height:140px;width:300px; "src="image/pay.jpg">
<img alt="支付方式" style="height:140px;" src="image/by.png">






</div>

<form action="payWayChange.do" method="post" enctype="application/x-www-form-urlencoded">
<div style="margin-top:20px;height:600px;width:890px;background-color:white;margin-top:15px">
<div style="margin-top:20px;height:100px;width:890px;background-color:white;margin-top:15px"></div>
<img style="position:absolute;height:300px;width:550px;left:420px;"alt="" src="image/ma.png">
<div style="position:absolute;height:100px;width:500px;top:750px;">

<div style="position:absolute;height:70px;width:180px;left:130px;"><input type="radio" name="payWay" value="ALiPay" >支付宝</div>
<div style="position:absolute;height:70px;width:180px;left:330px;"><input type="radio" name="payWay" value="weChat">微   信</div>
<div style="position:absolute;height:70px;width:180px;left:530px;"><input type="radio" name="payWay" value="Q Q">Q Q</div>
<div style="position:absolute;height:70px;width:180px;left:730px;"><input type="radio" name="payWay" value="Other">其他方式</div>
</div>
<div style="position:absolute;height:100px;width:200px;left:715px;top:800px;">
  <input type="submit" class="btn btn-primary" value="支付订单">
  </div>
</div>
</form>
</div>








</div>
  </body>
</html>
