<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%List<Integer> randNum = new LinkedList<Integer>();
   List<String>codes=new LinkedList<String>();
		
		for (int j = 0; j < 6; j++) {
			randNum.add((int) (Math.random() * 10));
		}
		String code="";
		for(int k=0;k<randNum.size();k++){
			 code=code+randNum.get(k);
		}
		 
		codes.add(code);
		code="";
		randNum.clear();
		String codeNumber=codes.get(0); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'order.jsp' starting page</title>

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
  
 <button  type="button" class="btn btn-link" ><a style="font-size:15px;text-decoration:none;color: #FF9900">尊贵的顾客： <%=session.getAttribute("name")%>  </a></button>
  <% }else{
   %>

 <button  type="button" class="btn btn-link" onClick="login()"><a style="font-size:15px;color: #FF9900">登陆</a></button>
 <a style="color: #FF9900;font-size:15px">/</a>
  <button type="button" class="btn btn-link" onClick="regist()"><a style="font-size:15px;color: #FF9900">注册</a></button>
 <%} %>

</div></div>
	<!-- 以上是头 -->
	<div style="height:100px;width:1200px;margin:1px auto;text-align:center;padding:30px">
	<img src="image/liucheng.png"  height="50px" width="845px">
	</div>
	<div style="height:800px;width:900px;margin:1px auto">
	<div style="height:150px;width:890px;margin:2px;background-color:white;padding:4px">
	<div style="height:130px;width:20px;background-color:white;float:left;margin:1px"></div>
	<div style="height:130px;width:245px;background-color:white;float:left;margin:1px">
	<!-- 占位 -->
	<div style="height:10px;width:205px;background-color:white"></div>
	<img src="image/${room.img }" height="130px" width="205px">
	</div>
	<div style="height:120px;width:280px;background-color:white;float:left;margin:1px">
	<div style="height:23px;width:280px;background-color:white"></div>
	<a style="font-size:18px;text-decoration:none;color:black">${room.type }</a><br>
	<a style="font-size:12px;text-decoration:none;color:gray">剩余数量：${room.count }</a>
	<a style="font-size:12px;text-decoration:none;color:gray">|</a>
	<a style="font-size:12px;text-decoration:none;color:gray">${room.price }</a>
	<a style="font-size:12px;text-decoration:none;color:gray">|</a>
	<a style="font-size:12px;text-decoration:none;color:gray">预定状态</a>
	<a style="font-size:12px;text-decoration:none;color:gray">否</a>
	<a style="font-size:12px;text-decoration:none;color:gray"></a>
	
	</div>
	<div style="height:120px;width:100px;float:left">
	<div style="height:25px;width:100px;background-color:white"></div>
	<div style="height:50px;width:100px">
	<a style="font-size:25px;color:#FF9900">¥</a><a style="font-size:30px;color:#FF9900">&nbsp;${room.price }</a>
	<a style="font-size:12px;color:gray">/日均</a>
	
	</div>
	</div>
	
	
	</div>
	
	<div style="margin-top:20px;height:600px;width:900px;background-color:white;margin-top:15px">
	<div style="height:30px;width:800px;padding:5px;background-color:white;margin-left:15px;">
	<a style="color:#4169E1;font-size:20px">顾客信息</a>
	</div>
	<div style="height:450px;width:900px;background-color:white">
	<div class="container " style="width:240px">

   <form method="post" action="pay.do" enctype="application/x-www-form-urlencoded">

   <label>入住时间：</label>
     <input type="text" class="form-control"  readonly="readonly" style="border:0px" name="start_date" value="<%=session.getAttribute("start_date")%>">

    <br>
    <label>离开时间：</label>
      <input type="text" class="form-control" readonly="readonly"  style="border:0px" name="end_date"  value="<%=session.getAttribute("end_date")%>">
    <br>
   <div class="form-group">
   <label>姓名</label>
   <input type="text" class="form-control" name="orderName">
   </div>
   
 
   <div class="form-group">
   <label>证件号码</label>
   <input type="text" class="form-control" name="userNumber">
   </div>
   
   <div class="form-group">
   <label>预订天数</label>
   <input type="text" style="width:50px;"class="form-control" name="count" value="<%=session.getAttribute("count")%>"/>
   </div>
    <br>
   <div class="form-group">
   
   
  <input type="submit" class="btn btn-primary" value="提交订单">
  
  <div>
  
    <input type="hidden" class="btn btn-primary" name="roomId" value="${room.roomId}">
   </div>
   </div>
   </form>
   
   
   </div>
	
	</div>
	
	</div>
	</div>
	
	
	
	<a>${room.type}</a>
	</div>
</body>
</html>
