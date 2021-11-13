<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

    
    <title>UserLogin.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">

  </head>
  
  <body>
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

  <div class="jumbotron jumbotron-fluid text-center col-xl-12">
       <h1 class="display-4">教学文本提取及语音合成系统&nbsp;</h1>
    
       <p class="lead">Teaching Test Recognition And Sound Creation System</p>
</div>
    <div class="container">
       <div class="row text-center">
          <div class="col-lg-6 offset-lg-3 offset-xl-0">
            <img src="image/Syncopasian.jpg" width="384" height="216" alt=""/>
<p>Using Our System to get the best recognition of your teaching classes!&nbsp; </p>
            <p>Enjoy Our System By Using it right now!&nbsp;</p>
         </div>
       <div class="col-lg-6 offset-lg-3 offset-xl-0">
      
      
      <form class="my-2 my-lg-0" method="post" name="my_form" action="">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
            <input class="form-control mr-sm-2" type="text" placeholder="Username" name="userName" id="user"><br/>
         <input class="form-control mr-sm-2" type="password" placeholder="Password" name="userword" id="psd"><br/>
             <button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="my_form.action='servlet/AccountCheck';">Sign in</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="my_form.action='SignUp.jsp';">Sign up</button>
          </form>
       

       </div>
       </div>
    
      <br>
       <hr>
      <br>
    <div class="row">
      
    
    </div>
       
       <br/>
       <br/>
       
       <br/>
       <br/>
      
      <br>
       <hr>
       <div class="row">
          <div class="text-center col-lg-6 offset-lg-3">
             <h4>&nbsp; </h4>
             <p>Copyright &copy; 2022 &middot; All Rights Reserved &middot; <a href="#" >My Website</a></p>
          </div>
       </div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
    <script src="js/jquery-3.4.1.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed --> 
    <script src="js/popper.min.js"></script>
  <script src="js/bootstrap-4.4.1.js"></script>
  </body>
</html>
