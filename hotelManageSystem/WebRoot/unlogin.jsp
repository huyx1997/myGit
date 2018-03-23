<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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


  </head>
  
  <body>
   <div style="height:52px;background-color:#cccccc">
   <div style="height:52px;width:100px;float:left"></div>
  <div style="height:52px;width:200px;padding:6px;float:left" >
   <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="first.jsp">首页</a></li>
  
</ul></div>

<div style="height:52px;width:200px;padding:10px;float:left">
<a style="font-size:20px;color:#FF9900;text-decoration:none">欢迎登陆</a>

</div>

<div style="height:52px;width:330px;padding:10px;float:right">
<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
<a style="font-size:20px;color:gray;text-decoration:none">&nbsp;&nbsp;联系酒店：</a>
<a style="font-size:20px;color:gray;text-decoration:none">&nbsp;&nbsp;400-825-825</a>

</div>



   </div>
   <div class="container " style="width:400px">
   
   <h1>登陆
   
   <small>没有账号<a href="register.jsp">注册</a></small><br>
   <a style="text-decoration:none;font-size:15px;color:red">请先登陆!</a>
   
   </h1>
   <form action="selUserById.do" method="post" enctype="application/x-www-form-urlencoded">
   <div class="form-group">
   <label>用户名/手机/邮箱</label>
   <input type="text" class="form-control" name="username">
   </div>
   
   <div class="form-group">
   <label>密码</label>
   <input type="password" class="form-control" name="password">
   </div>
   
   <div class="form-group">
   
   
   <button class="btn btn-primary btn-block" type="submit">登陆</button>
   
   </div>
   </form>
   
   
   </div>
   
   
   
   
   
  </body>
</html>
