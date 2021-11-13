
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>SignUpSuccess.jsp</title>
    
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
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
    <style>
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
                <a class="nav-link" href="#">Statistics</a>
             </li>
             <li class="nav-item dropdown">
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>             
                </div>
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
  <div class="container">
    <div class="row text-center">
      <div class="col-lg-12 offset-lg-3 offset-xl-0 font1">
          <p>&nbsp;</p>  
          <p>&nbsp;<strong>${message}</strong></p> 
          <p>&nbsp;</p>
      </div>
    </div>
  </div>

  <div class="container">
       <div class="row text-center">
          <div class="col-lg-6 offset-lg-3 offset-xl-0">
            <img src="image/Syncopasian.jpg" width="384" height="216" alt=""/>
<p>Using Our System to get the best recognition of your teaching classes!&nbsp; </p>
            <p>Enjoy Our System By Using it right now!&nbsp;</p>
         </div>
       <div class="col-lg-6 text-center offset-lg-3 offset-xl-0">
            Your Account Uuid is <p>&nbsp;</p>
            <h2>${uuid}</h2>
            <p>&nbsp;</p>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="window.open('UserLogin.jsp')">OK</button>
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

  </body>
</html>

