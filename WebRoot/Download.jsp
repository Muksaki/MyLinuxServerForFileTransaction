<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Download.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
	</style>

  </head>
  
  <body>
  
  <button class="but" style="width:80px; height:40px; position:absolute; right:0px; top:0px;">帮助</button>
  <button class="but" style="width:80px; height:40px; position:absolute; right:0px; top:60px;">反馈</button>
  <div style="text-align:center">
  	<h1>视频预览</h1>
  	
  	<video playsinline style="width:800px; height:600px;">
  		<source src="upload/MyVideo.mp4" controls="true" >
  		your browser does not support the video tag
  	</video>
  	<br>
  	<br>
    	
    		<!--<input type="checkbox" name="booleanSubtitle">With Subtitles(.srt)</br></br>  -->
    		<form action="FinalDownload.jsp">
    			<input type="checkbox" name="Audio"/>音频降噪
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="Video"/>视频画质增强
    		<br>
    		<input type="submit" class="but" value="下载">
    		</form>
    		</div>
  </body>
</html>
