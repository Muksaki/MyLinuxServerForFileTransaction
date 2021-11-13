<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <script>

    function $(id) {
        return document.getElementById(id);    //这个是返回一个id格式命名的对象，比如说下面的用户名标签里面的id是“user”，那么返回的就是user这个对象，
    }
    function check(){//check（）方法是用来判断是否跳转到下一个jsp界面。
        var user=$("user").value;
        var psd1=$("psd1").value;//用user和psd获取对象的信息
        var psd2=$("psd2").value;
        $("userinfo").innerHTML="";
        $("psdinfo1").innerHTML="";//用userinfo和psdinfo来书写提示内容，例如没有输入用户名这个提示信息，没有输入密码等，
        $("psdinfo2").innerHTML="";
        if(user=="")//如果用户名为空，将userinfo的内容赋为如下内容，即可以显示提示信息
            {
                $("userinfo").innerHTML="用户名不能为空";
                $("user").focus();
                return false;//这时候不能跳转页面，所以返回为false
            }
        if(psd1=="")
            {
                $("psdinfo1").innerHTML="密码不能为空";//同上
                $("psd1").focus();
                return false;
            }
        if(psd1 != psd2)
            {
                    $("psdinfo2").innerHTML="两次输入的密码不一致";
                    $("psd2").focus();
                    return false;
            }
        return true;
    }
</script>
    <title>User Sign Up</title>
    
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
      font-size: 18px;
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
                <a class="nav-link" href="#">Statistics</a>
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

  <div class="col-lg-6 offset-lg-3 offset-xl-0 col-center-without-board">
    <div class="col-lg-5 text-center font1 col-center-with-board">
        <p>&nbsp;</p>
    在这个站点注册
    <p>&nbsp;</p>
  </div>
  <p>&nbsp;</p>
    <div class="col-lg-5 text-center font1 col-center-with-board">
    <br>
    <form class="my-2 my-lg-0" method="post" action="UserSignup" onsubmit="return check()" >
    
    
<p>
    <label for="user">
        *用户名<br><input class="form-control mr-sm-2" type="text" name="loginName" id="user"><br><span id="userinfo"></span>
    </label>
</p>
<p>
    <label for="psd1">
        *密码<br><input class="form-control mr-sm-2" type="password"name="userword1" id="psd1"><br><span id="psdinfo1"></span>
    </label>
    
</p>
<p>
    <label for="psd2">
        *重复输入密码<br><input class="form-control mr-sm-2" type="password"name="userword2" id="psd2"><br><span id="psdinfo2"></span>
    </label>
</p>  

<p>
    <label for="user_name">
        真实姓名<br><input class="form-control mr-sm-2" type="text" name="userName" id="user_name">        
    </label>
</p>
<p>
    <label for="email">
        电子邮件<br><input class="form-control mr-sm-2" type="text" name="e-mail" id="email">
    </label>
</p>
<p>
    <label for="tel">
        电话号码<br><input class="form-control mr-sm-2" type="text" name="telephone" id="tel">
    </label>
</p>
     <p>请选择学科类别:<br>
    <select name="subject" class="selectpicker" style="text-align:center; text-align-last:center;">
    <option value="000001">芯片技术</option>
    <option value="000002">操作系统</option>
    <option value="000003">数据库</option>
    <option value="000004">信息安全</option>
    <option value="000005">中间件</option>
    <option value="000006">办公套件</option>
    <option value="000007">云计算与大数据</option>
    <option value="000008">后端开发</option>
    <option value="000009">Web前端</option>
    <option value="000010">信创课程</option>
    <option value="000011">数字化课程</option>
    <option value="000012">综合类课程</option>
    <option value="000013">实训类课程</option>
    </select>
     </p>
     <br>
     <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="注册">
     <p>&nbsp;</p>
    </form>
</div>
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
