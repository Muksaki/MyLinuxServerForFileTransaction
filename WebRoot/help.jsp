<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Help.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="referrer" content="no-referrer">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
    <script src="js/jquery-3.4.1.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed --> 
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap-4.4.1.js"></script>
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <link href="bootstrap-select-1.13.9/css/bootstrap-select.min.css" rel="stylesheet" />
    <script src="bootstrap-select-1.13.9/js/bootstrap-select.min.js"></script>
    
	<style type="text/css">

.col-center-with-board{
      float: none;
      display:block;
      margin-left: auto;
      margin-right: auto;
      border-style: outset;
      border-color: #FFFFFF;
      background-color: #FFFFFF;
      border-radius: 10px;
    }
    .col-center-without-board{
      float: none;
      display:block;
      margin-left: auto;
      margin-right: auto;
    }
    .font1{
      font-size: 22px;
    }
	</style>


  </head>
  
  	<body style="background-color: #00000011">
  	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
       <a class="navbar-brand" href="UserLogin.jsp">TTRSCS</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
             <li class="nav-item active">
                <a class="nav-link" href="UserLogin.jsp">Home <span class="sr-only">(current)</span></a>
             </li>
             <li class="nav-item">
                <a class="nav-link" href="audit.jsp">Statistics</a>
             </li>
             <li class="nav-item dropdown">
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>             </div>
             </li>
             <li class="nav-item">
                <a class="nav-link" href="help.jsp">Help</a>
             </li>
        <li class="nav-item">
                <a class="nav-link" href="feedback.jsp">Feedback</a>
             </li>
          </ul>
          
       </div>
    </nav>
<p>&nbsp;</p>
        <p>&nbsp;</p>
<div class="container">
  <div class="col-lg-12 offset-lg-3 offset-xl-0 col-center-without-board">
    <div class="col-lg-10 text-center font1 col-center-with-board">
        <p>&nbsp;</p>
    帮助文档
    <p>&nbsp;</p>
  </div>
  <p>&nbsp;</p>
    <div class="col-lg-10 text-center font1 col-center-with-board">
      <br>
      <p>1、Q: Why is this page here? I can't quite understand!</p>
      <p>A: Because it's here so it's here.</p>
      <br>
</div><br>
<div class="col-lg-10 text-center font1 col-center-with-board">
      <br>
      <p>2、Q: Why is this page here? I can't quite understand!</p>
      <p>A: Because it's here so it's here.</p>
      <br>
</div>
<br>
<div class="col-lg-10 text-center font1 col-center-with-board">
      <br>
      <p>3、Q: Why is this page here? I can't quite understand!</p>
      <p>A: Because it's here so it's here.</p>
      <br>
</div>
    </div>
	 
    <hr>
       <div class="row">
          <div class="text-center col-lg-6 offset-lg-3">
             <h4>&nbsp; </h4>
             <p>Copyright &copy; 2022 &middot; All Rights Reserved &middot; <a href="#" >My Website</a></p>
          </div>
       </div>
    </div>
  </body>
  
  
  
</html>
