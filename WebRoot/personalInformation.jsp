<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PersonalInformation</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:0px;">帮助</button>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:60px;">反馈</button>
  	<div class="myInformation">
  		<h2>login_name: ${login_name}</h2>
  		<h2>true_name: ${true_name}</h2>
  		<h2>e-mail: ${email}</h2>
  		<h2>telephone number: ${tel}</h2>
  		<h2>binding role: ${bindingrole}</h2>
  		<h2>School: Xidian Unniversity</h2>
  		<h2>uuid: ${uuid}</h2>
  		<h2>subject: ${subject}</h2>
  		
  	</div>
    <form method="post" action="audit.jsp">
    <select style="display:none" name="login_name" id="login_name"><!--style="display:none"  --> 
    	<option value=${login_name }>${login_name }</option>
    </select>
    	<input type="submit" value="audit">
    </form>
  </body>
</html>
