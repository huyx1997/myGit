<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addRoom.jsp' starting page</title>
    
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
  	<div style="background-color:#DCDCDC">
   <div style="height:57px;background-color:#082E54">
  <div style="height:57px;width:300px;padding:9px;float:left" >
  
   <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="manager/manager.jsp">首页</a></li>
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
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">Elan欢迎你</a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>
   
   
   
   
   
    <div class="container " style="width:400px">
   
   <h1>添加房间信息
   
  
   
   </h1>
   <form action="addRoom.do" method="post" enctype="multipart/form-data">
   <div class="form-group">
   <label> 房间编码：</label>
   <input type="text" class="form-control" name="roomId">
   </div>
   
   <div class="form-group">
   <label> 房间类型:</label>
   <input type="text" class="form-control" name="type">
   </div>
   
    <div class="form-group">
   <label> 价格：</label>
   <input type="text" class="form-control" name="price">
   </div>
   
   
    <div class="form-group">
   <label> 剩余数量:</label>
   <input type="text" class="form-control" name="count">
   </div>
   
      
   
          <div class="form-group">
   <label> 图片：</label>
   <input  style="width:250px;height:40px;" class="form-control" type="file" name="myFile"/><br />
   </div>
   
   <div class="form-group">
   
   
   <button class="btn btn-primary btn-block" type="submit">添加</button>
   
   </div>
   </form>
   
   
   </div>
   
   

  </body>
</html>
