<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Local Audio Upload</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function check(){
		var filename = document.getElementById("uploadFile").value;
		var type = filename.substring(filename.length - 4);
		if(type == ".wav" || type == ".mp3")	return true;
		return false;
		
	}
	</script>
  </head>
  
  <body>
  
  <button style="width:80px; height:40px; position:absolute; right:0px; top:0px;">帮助</button>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:60px;">反馈</button>
    <form method="post" action="servlet/AudioTransaction" enctype="multipart/form-data" onsubmit="return check();">
    	Choose Local Audio:
    	<input type="file" name="uploadFile" id="uploadFile"/>
    	<br/><br/>
    	<input type="submit" value="Upload" />
	</form>
  </body>
</html>
