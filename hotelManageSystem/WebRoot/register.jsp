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
<script type="text/javascript">
function $(Element){
	return document.getElementById(Element);
}
/*鼠标在密码文本框中时*/
function pwdBlur(){
var pwd=$("password");
var pwd1=$("passwordstr");
if(pwd.value==null){
pwd1.innerHTML="请输入密码！";
return false;
}
pwd1.innerHTML="";
return true;
}
function pwdFocus(){
	var pwd1=$("passwordstr");
	pwd1.innerHTML="密码长度6－20个字符";
}
/*鼠标在确认密码文本框中时 */
function repwdFocus(){
var pwd2=$("rePassWordstr");
pwd2.innerHTML="请您再次输入密码！";
}
/*鼠标离开确认密码文本框中时 */
function repwdBlur(){
var pwd=$("password");
var pwd1=$("rePassWord");
var pwd2=$("rePassWordstr");
if(pwd.value!=pwd1.value){
pwd2.innerHTML="两次输入的密码不一致！";
return false;
}
pwd2.innerHTML="";
return true;
}
/*鼠标在邮箱文本框中时*/
function emailFocus(){
var email1=$("emailstr");
email1.innerHTML="格式：xx@xx.xx";
}
function emailBlur(){
var email = $("email");
var email1 = $("emailstr");
var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/i;
if(reg.test(email.value)==false){
	email1.innerHTML="邮箱格式不正确！";
	return false;
	}
	email1.innerHTML="";
	return true;
}
function checkAll(){
	
	repwdBlur();
	emailBlur();
	if(!repwdBlur()&&emailBlur()){
		return false;
	}else{
		window.location.href="first.jsp";
		alert("恭喜您注册成功！");
	
		return true;
	}
}
</script>

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

<div style="height:52px;width:300px;padding:10px;float:right">
<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
<a style="font-size:20px;color:#082E54;text-decoration:none">&nbsp;&nbsp;联系酒店：</a>
<a style="font-size:20px;color:#082E54;text-decoration:none">&nbsp;&nbsp;400-825-825</a>

</div>



   </div>
   <div class="container " style="width:400px">
   
   <h1>请输入您的信息
   <!-- 
   <small>没有账号<a href="register.html">注册</a></small>
    -->
   </h1><br>
   <form action="addUser.do" method="post" onsubmit="checkAll()" enctype="application/x-www-form-urlencoded">
   <div class="form-group">
   <label>用户姓名</label>
   <input type="text" class="form-control" name="userName">
   </div>
   
   <div class="form-group">
   <label>手机号码</label>
   <input type="text" class="form-control" name="phoneNumber">
   </div>
   
   <div class="form-group">
   <label>邮箱</label>
   <input type="text" class="form-control" name="email"  onFocus="emailFocus()" onBlur="emailBlur()"/><span id="emailstr"></span></dd>
   </div>
   
   <div class="form-group">
   <label>密码</label>
   <input type="password" class="form-control" name="passWord" onFocus="pwdFocus()" onBlur="pwdBlur()"/><span id="passWordstr"></span>
   </div>
   
   <div class="form-group">
   <label>确认密码</label>
   <input type="password" class="form-control" name="rePassWord"  onFocus="repwdFocus()" onBlur="repwdBlur()"/><span id="rePassWordstr"></span>
   </div>
  
   <div class="form-group">
   
   
   <button class="btn btn-primary btn-block" type="submit">注册</button>
   
   </div>
   </form>
   
   
   </div>
   
   
   
   
   
  </body>
</html>
