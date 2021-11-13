<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Audit.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="referrer" content="no-referrer">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	
.but { /* 按钮美化 */
	width: 130px; /* 宽度 */
	height: 40px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
}
.but:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}
.but1 { /* 按钮美化 */
	width: 260px; /* 宽度 */
	height: 40px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
}
.but1:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}
	</style>

  </head>
  
  <body>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:0px;">帮助</button>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:60px;">反馈</button>
    <div style="width:100%; text-align:center">
    <br><br><br><br>
    <a href="Tables/个人视频修改次数.html"><button class="but1">个人视频修改次数</button><!-- img border="0" src="/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/tmp/1.jpg" width="500" height="300" /> --></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Tables/个人课均修改次数总榜（少-多）.html"><button class="but1">个人每日修改次数</button></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Tables/视频修改次数总榜（少-多）.html"><button class="but1">用户个人修改率</button></a>
    </div>
  </body>
  
  
  
</html>
