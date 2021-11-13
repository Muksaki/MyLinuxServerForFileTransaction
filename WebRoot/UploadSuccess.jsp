<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript">
    	function my_function(){
    		
    	}
    </script>
    
    <title>My JSP 'UploadSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:0px;">帮助</button>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:60px;">反馈</button>
    <center>
        <h2>Congratulations Dear ${login_name}</h2><h2> ${message}</h2>
    </center>
    <center>
    	<form method="post" action="servlet/VideoProcessing">
    		<input type="submit" value="Start Processing" />
		</form>
    </center>
  </body>
</html>
