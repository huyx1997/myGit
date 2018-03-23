<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
     <script type="text/javascript">
    function login(){
	window.location.href="login.jsp";
	
	}
	function regist(){
	window.location.href="register.jsp";
	
	}
    </script>
    
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
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">Elan欢迎你 </a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>

  <!--<div style="height:310px;margin-top:20px;background-color:yellow">-->
 <!--<div style="height:310px;width:350px;float:left;background-color:gray">-->
 <!--</div> -->

<!-- 轮播窗 -->
<div style="height:400px;width:100%;background-color:white;float:left">
<div class="container" style="width:100%">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img style="height:350px"  src="image/brand6.jpg" >
      <div class="carousel-caption">
       
      </div>
    </div>
    <div class="item">
      <img style="height:350px" src="image/brand1.jpg"  >
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
      <img style="height:350px" src="image/brand7.jpg">
      <div class="carousel-caption">
       
      </div>
    </div>
   
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div></div>
</div>


 <!--</div> -->

<div style="height:500px;width:1200px;margin:15px">

<div style="height:500px;width:300px;float:left">


<div class="btn-group-vertical" role="group" style="margin-left:5px">
    <div class="btn-group" role="group">
    <button type="button" class="btn btn-default dropdown-toggle" style="width:260px;height:50px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       添加房间
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu">
      <li><a href="orderRoom.jsp">客房预订</a></li>
      <li><a href="selectOrder.jsp">查看订单</a></li>
    </ul>
  </div>

    
    <button style="height:50px" type="button" class="btn btn-default"><a href="<%=request.getContextPath()%>/selUserInfo.do?useId=<%=session.getAttribute("us")%>">个人中心</a></button>
    <button  style="height:50px"type="button" class="btn btn-default">修改房间</button>
        <button  style="height:50px"type="button" class="btn btn-default">订单查看</button>
            <button  style="height:50px"type="button" class="btn btn-default">房间查看</button>
                <button style="height:50px" type="button" class="btn btn-default">酒店简介</button>
                    <button  style="height:50px"type="button" class="btn btn-default">酒店地址</button>
 </div>
 
 
  

</div>
<div style="height:500px;width:630px;float:left">
<img style="position:absolute;left:300px;top:455px;height:360px;width:580px;"src="image/note.jpg"/>

</div>
<img style="position:absolute;left:880px;top:455px;height:360px;width:600px;"src="image/brand4.jpg"/>
</div>




   <div style="width:100%;height:57px;background-color:#082E54;position:absolute;top:900px;">
   关注我们
   
   </div>












  </body>
</html>
