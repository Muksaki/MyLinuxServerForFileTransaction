<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <script>
    	$(document).ready(function (){
    	 var timeParam = Math.round(new Date().getTime()/1000);
    	 var url= "upload/subtitle.json?timenow="+ timeParam;
    	$.getJSON(url, function (data){
		//$.getJSON("tmp/subtitles.json", function (data){
      var jsontip = document.getElementById("jsonTip");
      
      var obj=document.getElementById('selector');

      var strHtml = "";
      
      var i=0;

      //存储数据的变量

      //jsontip.empty();

      //清空内容

      $.each(data, function (infoIndex, info){
        	
        //$selector.append("<option value=" + info["id"] + ">" + info["id"] + "</option>");
        
        strHtml = "";
       
        if(info["text"]!="Conversion failed"){
        
        i++;
        
        obj.options.add(new Option(i, info["id"]));
        
        var new_div = document.createElement("div");
        
        strHtml = "";
        
        strHtml += "<hr>";

        strHtml += "id：" + i + "<br>";

        strHtml += "start time：" + info["start_time"] + "<br>";

        strHtml += "end time：" + info["end_time"] + "<br>";
        
        strHtml += "text：" + info["text"] + "<br>";

        
        
        new_div.innerHTML = strHtml;
        
        new_div.className = "sound-" + info["id"];
        
        var sound = document.createElement("audio");
        
        sound.controls = true;
        
        sound.preload = "none";
        	
        sound.src = "upload/temp/temp" + info["id"] + ".wav?timenow=" + timeParam;
        
        new_div.appendChild(sound);
        
        jsontip.insertBefore(new_div, jsontip.lastChild);
        }
        
        
        
      });
      //显示处理后的数据
    });
});
    </script>
    
    
    <script>  
        function msgbox(n){
            document.getElementById('inputbox').style.display=n?'block':'none';      /* 點擊按鈕打開/關閉 對話框 */
        }
        function transmsgbox(n){
            document.getElementById('transforminputbox').style.display=n?'block':'none';      /* 點擊按鈕打開/關閉 對話框 */
        }
       
        function judge(){
        		var newtext1 = document.getElementsByName("newtext1")[0];
        		var newtext2 = document.getElementsByName("newtext2")[0];
        		if(newtext1.value == "" && newtext2.value == "")
        			return false;
        		return true;
        }
        function dosomething(){
        document.getElementById("newtextinfo1").innerHTML = "  New text cannot be null!";
        	document.getElementById("newtextinfo2").innerHTML = "  New text cannot be null!";
        }
        
        function check(){
        //alert("Submiting!");
        		//var newtext = document.getElementsByName("newtext")[0].value;
        		document.getElementById("newtextinfo1").innerHTML="";
        		if(!judge()){
        			//document.getElementById("newtextinfo1").innerHTML="  New text cannot be null!";
        			//document.getElementsByName("newtext")[0].focus();
        			dosomething();
        			return false;
        		}
        		return true;
        }
        function erase(){//When MsgWindow gets closed, erase all information input
        	//var mytext = document.getElementsByName("newtext");
        	//for(var i in mytext)
        		//i.value = "";
        	document.getElementsByName("newtext1")[0].value = "";
        	document.getElementsByName("newtext2")[0].value = "";
        	document.getElementById("newtextinfo1").innerHTML = "";
        	document.getElementById("newtextinfo2").innerHTML = "";
        }
      
        
     </script>  
    
    <title>SubTitlePresentation.jsp'</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache, must-revalidate">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<style>

.box{
    width:30%; margin-top:10%; margin:auto; padding:28px;
    height:150px; border:1px #111 solid;
    display:none;             /* 默認對話框隱藏 */
}

.box.show{display:block;} 

.box .x{ font-size:18px; text-align:right; display:block;}


.processover{
	width:150px;
	height:75px;
	background:white;
	position:fixed;
	right:130px;
	bottom:20px;
}

.but { /* 按钮美化 */
	width: 260px; /* 宽度 */
	height: 80px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
	border-radius: 15px;
	font-family: "arial,sans-serif";
	font-size:30;
}
.but:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}

.but1 { /* 按钮美化 */
	width: 200px; /* 宽度 */
	height: 40px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	/*background: #1E90FF; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
	border-radius: 15px;
	font-family: "arial,sans-serif";
	font-size:15;
	color:black;
}
.but1:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: #5599FF;
}


</style> 
  </head>
  
  <body>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:80px;">帮助</button>
  <button style="width:80px; height:40px; position:absolute; right:0px; top:140px;">反馈</button>
  
  <div id="DivFrame">
   <div id="Process"style="width:100%;background:white; opacity:1.0; position:fixed; top:0px">
   			<form method="post" action="" name="my_form" onsubmit="return check();">
   					
   					 <div id='inputbox' class="box">
        						<a class='x' href='' onclick="msgbox(0); erase(); return false;">x</a>
        						Please Enter New Text:<br>
        						<input type="text" name="newtext1"><span id="newtextinfo1"></span><br>
        						<input type="submit" class="but1" value="Confirm" onclick="my_form.action='servlet/Text_Replacement';">
     					</div> 
     					<div id='transforminputbox' class="box">
        						<a class='x' href='' onclick="transmsgbox(0); erase(); return false;">x</a>
        						Please Enter New Text For Sound Transformation:
        						<input type="text" name="newtext2"><span id="newtextinfo2"></span><br>
        						<input type="submit" class="but1" value="Confirm" onclick="my_form.action='servlet/SoundTransformation';">
     					</div>
     					
     					<br>
     					<select id="selector" name="id">
   							
   					</select>
   						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="but1" value="Text Replacement"  onclick="msgbox(1);erase();transmsgbox(0);"/>
   						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="but1" value="Local Sound Replacement"  onclick="my_form.action='servlet/IdMemory'; my_form.submit();"/>
   						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="but1" value="Online Record Replacement"  onclick="my_form.action='online_record_replacement.jsp'; my_form.submit();"/>
   						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="but1" value="Text-Sound Transformation"  onclick="msgbox(0);erase(); transmsgbox(1);"/>
   						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	Fluent Replacement(Default)
   			</form>
   		
   </div>
  	<div id="jsonTip"style="margin-top:60px">
  		<div class="end div" style="display:none">123123</div>
  	</div>
  </div>
  <div class="processover">
  <form action="Download.jsp">
  	<input type="submit" class="but" value="Process Over">
  	<!--<input type="checkbox" name="subtitles">With Subtitles(.srt)   -->
  </form>
    </div>
  </body>
</html>
