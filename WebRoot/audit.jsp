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
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
    
    <script type="text/javascript" src="https://assets.pyecharts.org/assets/echarts.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed --> 
    <script src="js/popper.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap-4.4.1.js"></script>
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <link href="bootstrap-select-1.13.9/css/bootstrap-select.min.css" rel="stylesheet" />
    <script src="bootstrap-select-1.13.9/js/bootstrap-select.min.js"></script>
    
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
       <h1 class="display-4">管理者审计&nbsp;</h1>
    
       <p class="lead">Admin Audit</p>
</div>

<div class="container">
<div class="row text-center">
          <div id="edefec7cdb9049ea89213344dc1d128d" class="chart-container" style="width:350px; height:250px;"></div>
          <div id="cc4b7398527b44afa66f3a7010c13ecf" class="chart-container" style="width:350px; height:250px;"></div>
          <div id="b62a9fba77704f82834a5a05f6a641c7" class="chart-container" style="width:350px; height:250px;"></div>
      </div>
<br><br><br><br>
   <div class="row text-center">
          <div class="col-lg-6 offset-lg-3 offset-xl-0">
    <p>学科类别:
    <select name="subject" class="selectpicker" style="text-align:center; text-align-last:center;">
    <option value="000000">全部</option>
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
 </div>

    <div class="col-lg-6 offset-lg-3 offset-xl-0">
      <form action="personal_audit.jsp" method="post" class="form-inline my-2 my-lg-0">
        姓名：
             <input class="form-control mr-sm-2" type="text" placeholder="Name" name="teachername">
             <button class="btn btn-outline-success my-2 my-sm-0" type="submit">查询</button>
          </form>
    </div>
</div>

    <div class="row text-center">
          <div class="col-lg-12 offset-lg-3 offset-xl-0">
    <br><br><br><br>
    <a href="Tables/教师课均修改次数总榜（多-少）.html"><button class="btn btn-outline-success my-2 my-sm-0">教师课均修改次数总榜</button><!-- img border="0" src="/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/tmp/1.jpg" width="500" height="300" /> --></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Tables/视频修改次数总榜（多-少）.html"><button class="btn btn-outline-success my-2 my-sm-0">视频修改次数总榜</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Tables/教师平均修改率.html"><button class="btn btn-outline-success my-2 my-sm-0">教师平均修改率</button></a>
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
    <script>
        var chart_edefec7cdb9049ea89213344dc1d128d = echarts.init(
            document.getElementById('edefec7cdb9049ea89213344dc1d128d'), 'white', {renderer: 'canvas'});
        var option_edefec7cdb9049ea89213344dc1d128d = {
    "animation": true,
    "animationThreshold": 2000,
    "animationDuration": 1000,
    "animationEasing": "cubicOut",
    "animationDelay": 0,
    "animationDurationUpdate": 300,
    "animationEasingUpdate": "cubicOut",
    "animationDelayUpdate": 0,
    "color": [
        "#c23531",
        "#2f4554",
        "#61a0a8",
        "#d48265",
        "#749f83",
        "#ca8622",
        "#bda29a",
        "#6e7074",
        "#546570",
        "#c4ccd3",
        "#f05b72",
        "#ef5b9c",
        "#f47920",
        "#905a3d",
        "#fab27b",
        "#2a5caa",
        "#444693",
        "#726930",
        "#b2d235",
        "#6d8346",
        "#ac6767",
        "#1d953f",
        "#6950a1",
        "#918597"
    ],
    "series": [
        {
            "type": "line",
            "name": "\u4f7f\u7528\u6b21\u6570",
            "connectNulls": false,
            "symbolSize": 4,
            "showSymbol": true,
            "smooth": true,
            "clip": true,
            "step": false,
            "data": [
                [
                    "00:00",
                    30
                ],
                [
                    "01:15",
                    28
                ],
                [
                    "02:30",
                    25
                ],
                [
                    "03:45",
                    26
                ],
                [
                    "05:00",
                    27
                ],
                [
                    "06:15",
                    30
                ],
                [
                    "07:30",
                    55
                ],
                [
                    "08:45",
                    50
                ],
                [
                    "10:00",
                    40
                ],
                [
                    "11:15",
                    39
                ],
                [
                    "12:30",
                    38
                ],
                [
                    "13:45",
                    39
                ],
                [
                    "15:00",
                    40
                ],
                [
                    "16:15",
                    50
                ],
                [
                    "17:30",
                    60
                ],
                [
                    "18:45",
                    75
                ],
                [
                    "20:00",
                    82
                ],
                [
                    "21:15",
                    70
                ],
                [
                    "22:30",
                    60
                ],
                [
                    "23:45",
                    40
                ]
            ],
            "hoverAnimation": true,
            "label": {
                "show": true,
                "position": "top",
                "margin": 8
            },
            "lineStyle": {
                "show": true,
                "width": 2,
                "opacity": 1,
                "curveness": 0,
                "type": "solid",
                "color": "green"
            },
            "areaStyle": {
                "opacity": 0
            },
            "zlevel": 0,
            "z": 0
        }
    ],
    "legend": [
        {
            "data": [
                "\u4f7f\u7528\u6b21\u6570"
            ],
            "selected": {
                "\u4f7f\u7528\u6b21\u6570": true
            },
            "show": true,
            "padding": 5,
            "itemGap": 10,
            "itemWidth": 25,
            "itemHeight": 14
        }
    ],
    "tooltip": {
        "show": true,
        "trigger": "axis",
        "triggerOn": "mousemove|click",
        "axisPointer": {
            "type": "cross"
        },
        "showContent": true,
        "alwaysShowContent": false,
        "showDelay": 0,
        "hideDelay": 100,
        "textStyle": {
            "fontSize": 14
        },
        "borderWidth": 0,
        "padding": 5
    },
    "xAxis": [
        {
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "boundaryGap": false,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            },
            "data": [
                "00:00",
                "01:15",
                "02:30",
                "03:45",
                "05:00",
                "06:15",
                "07:30",
                "08:45",
                "10:00",
                "11:15",
                "12:30",
                "13:45",
                "15:00",
                "16:15",
                "17:30",
                "18:45",
                "20:00",
                "21:15",
                "22:30",
                "23:45"
            ]
        }
    ],
    "yAxis": [
        {
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "boundaryGap": false,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            }
        }
    ],
    "title": [
        {
            "text": "\u65e5\u6d3b\u8dc3\u5ea6",
            "subtext": "**\u5e74**\u6708**\u65e5",
            "padding": 5,
            "itemGap": 10
        }
    ]
};
        chart_edefec7cdb9049ea89213344dc1d128d.setOption(option_edefec7cdb9049ea89213344dc1d128d);
    </script>
<script>
        var chart_cc4b7398527b44afa66f3a7010c13ecf = echarts.init(
            document.getElementById('cc4b7398527b44afa66f3a7010c13ecf'), 'white', {renderer: 'canvas'});
        var option_cc4b7398527b44afa66f3a7010c13ecf = {
    "animation": true,
    "animationThreshold": 2000,
    "animationDuration": 1000,
    "animationEasing": "cubicOut",
    "animationDelay": 0,
    "animationDurationUpdate": 300,
    "animationEasingUpdate": "cubicOut",
    "animationDelayUpdate": 0,
    "color": [
        "#c23531",
        "#2f4554",
        "#61a0a8",
        "#d48265",
        "#749f83",
        "#ca8622",
        "#bda29a",
        "#6e7074",
        "#546570",
        "#c4ccd3",
        "#f05b72",
        "#ef5b9c",
        "#f47920",
        "#905a3d",
        "#fab27b",
        "#2a5caa",
        "#444693",
        "#726930",
        "#b2d235",
        "#6d8346",
        "#ac6767",
        "#1d953f",
        "#6950a1",
        "#918597"
    ],
    "series": [
        {
            "type": "line",
            "name": "\u4f7f\u7528\u6b21\u6570",
            "connectNulls": false,
            "symbolSize": 4,
            "showSymbol": true,
            "smooth": true,
            "clip": true,
            "step": false,
            "data": [
                [
                    "Mon",
                    900
                ],
                [
                    "Tue",
                    1000
                ],
                [
                    "Wed",
                    950
                ],
                [
                    "Thu",
                    980
                ],
                [
                    "Fri",
                    1100
                ],
                [
                    "Sat",
                    850
                ],
                [
                    "Sun",
                    950
                ]
            ],
            "hoverAnimation": true,
            "label": {
                "show": true,
                "position": "top",
                "margin": 8
            },
            "lineStyle": {
                "show": true,
                "width": 2,
                "opacity": 1,
                "curveness": 0,
                "type": "solid",
                "color": "green"
            },
            "areaStyle": {
                "opacity": 0
            },
            "zlevel": 0,
            "z": 0
        }
    ],
    "legend": [
        {
            "data": [
                "\u4f7f\u7528\u6b21\u6570"
            ],
            "selected": {
                "\u4f7f\u7528\u6b21\u6570": true
            },
            "show": true,
            "padding": 5,
            "itemGap": 10,
            "itemWidth": 25,
            "itemHeight": 14
        }
    ],
    "tooltip": {
        "show": true,
        "trigger": "axis",
        "triggerOn": "mousemove|click",
        "axisPointer": {
            "type": "cross"
        },
        "showContent": true,
        "alwaysShowContent": false,
        "showDelay": 0,
        "hideDelay": 100,
        "textStyle": {
            "fontSize": 14
        },
        "borderWidth": 0,
        "padding": 5
    },
    "xAxis": [
        {
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            },
            "data": [
                "Mon",
                "Tue",
                "Wed",
                "Thu",
                "Fri",
                "Sat",
                "Sun"
            ]
        }
    ],
    "yAxis": [
        {
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "axisLabel": {
                "show": true,
                "position": "top",
                "margin": 8,
                "formatter": "{value}"
            },
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "min": 600,
            "max": 1200,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            }
        }
    ],
    "title": [
        {
            "text": "\u5468\u6d3b\u8dc3\u5ea6",
            "subtext": "**\u5e74**\u6708**\u65e5\u2014\u2014**\u5e74**\u6708**\u65e5",
            "padding": 5,
            "itemGap": 10
        }
    ]
};
        chart_cc4b7398527b44afa66f3a7010c13ecf.setOption(option_cc4b7398527b44afa66f3a7010c13ecf);
    </script>
<script>
        var chart_b62a9fba77704f82834a5a05f6a641c7 = echarts.init(
            document.getElementById('b62a9fba77704f82834a5a05f6a641c7'), 'white', {renderer: 'canvas'});
        var option_b62a9fba77704f82834a5a05f6a641c7 = {
    "animation": true,
    "animationThreshold": 2000,
    "animationDuration": 1000,
    "animationEasing": "cubicOut",
    "animationDelay": 0,
    "animationDurationUpdate": 300,
    "animationEasingUpdate": "cubicOut",
    "animationDelayUpdate": 0,
    "color": [
        "#c23531",
        "#2f4554",
        "#61a0a8",
        "#d48265",
        "#749f83",
        "#ca8622",
        "#bda29a",
        "#6e7074",
        "#546570",
        "#c4ccd3",
        "#f05b72",
        "#ef5b9c",
        "#f47920",
        "#905a3d",
        "#fab27b",
        "#2a5caa",
        "#444693",
        "#726930",
        "#b2d235",
        "#6d8346",
        "#ac6767",
        "#1d953f",
        "#6950a1",
        "#918597"
    ],
    "series": [
        {
            "type": "line",
            "name": "\u4f7f\u7528\u6b21\u6570",
            "connectNulls": false,
            "symbolSize": 4,
            "showSymbol": true,
            "smooth": true,
            "clip": true,
            "step": false,
            "data": [
                [
                    "1",
                    1096
                ],
                [
                    "2",
                    938
                ],
                [
                    "3",
                    1069
                ],
                [
                    "4",
                    1080
                ],
                [
                    "5",
                    1032
                ],
                [
                    "6",
                    954
                ],
                [
                    "7",
                    1110
                ],
                [
                    "8",
                    1105
                ],
                [
                    "9",
                    1029
                ],
                [
                    "10",
                    1072
                ],
                [
                    "11",
                    1129
                ],
                [
                    "12",
                    1008
                ],
                [
                    "13",
                    995
                ],
                [
                    "14",
                    905
                ],
                [
                    "15",
                    1138
                ],
                [
                    "16",
                    1021
                ],
                [
                    "17",
                    1084
                ],
                [
                    "18",
                    1108
                ],
                [
                    "19",
                    1009
                ],
                [
                    "20",
                    925
                ],
                [
                    "21",
                    1064
                ],
                [
                    "22",
                    1035
                ],
                [
                    "23",
                    987
                ],
                [
                    "24",
                    1092
                ],
                [
                    "25",
                    991
                ],
                [
                    "26",
                    1002
                ],
                [
                    "27",
                    1115
                ],
                [
                    "28",
                    1194
                ],
                [
                    "29",
                    1112
                ],
                [
                    "30",
                    1061
                ]
            ],
            "hoverAnimation": true,
            "label": {
                "show": true,
                "position": "top",
                "margin": 8
            },
            "lineStyle": {
                "show": true,
                "width": 2,
                "opacity": 1,
                "curveness": 0,
                "type": "solid",
                "color": "green"
            },
            "areaStyle": {
                "opacity": 0
            },
            "zlevel": 0,
            "z": 0
        }
    ],
    "legend": [
        {
            "data": [
                "\u4f7f\u7528\u6b21\u6570"
            ],
            "selected": {
                "\u4f7f\u7528\u6b21\u6570": true
            },
            "show": true,
            "padding": 5,
            "itemGap": 10,
            "itemWidth": 25,
            "itemHeight": 14
        }
    ],
    "tooltip": {
        "show": true,
        "trigger": "item",
        "triggerOn": "mousemove|click",
        "axisPointer": {
            "type": "line"
        },
        "showContent": true,
        "alwaysShowContent": false,
        "showDelay": 0,
        "hideDelay": 100,
        "textStyle": {
            "fontSize": 14
        },
        "borderWidth": 0,
        "padding": 5
    },
    "xAxis": [
        {
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            },
            "data": [
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
                "8",
                "9",
                "10",
                "11",
                "12",
                "13",
                "14",
                "15",
                "16",
                "17",
                "18",
                "19",
                "20",
                "21",
                "22",
                "23",
                "24",
                "25",
                "26",
                "27",
                "28",
                "29",
                "30"
            ]
        }
    ],
    "yAxis": [
        {
            "show": true,
            "scale": false,
            "nameLocation": "end",
            "nameGap": 15,
            "gridIndex": 0,
            "inverse": false,
            "offset": 0,
            "splitNumber": 5,
            "min": 800,
            "max": 1300,
            "minInterval": 0,
            "splitLine": {
                "show": true,
                "lineStyle": {
                    "show": true,
                    "width": 1,
                    "opacity": 1,
                    "curveness": 0,
                    "type": "solid"
                }
            }
        }
    ],
    "title": [
        {
            "text": "\u6708\u6d3b\u8dc3\u5ea6",
            "subtext": "**\u5e74**\u6708",
            "padding": 5,
            "itemGap": 10
        }
    ],
    "dataZoom": {
        "show": true,
        "type": "slider",
        "realtime": true,
        "start": 60,
        "end": 80,
        "orient": "horizontal",
        "zoomLock": false,
        "filterMode": "filter"
    }
};
        chart_b62a9fba77704f82834a5a05f6a641c7.setOption(option_b62a9fba77704f82834a5a05f6a641c7);
    </script>
  </body>
  
  
  
</html>
