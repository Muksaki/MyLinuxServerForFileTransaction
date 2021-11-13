<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Personal80.jsp</title>
    
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
       <h1 class="display-4">Teacher 80&nbsp;</h1>
    
       <p class="lead">Personal Audit</p>
</div>
<div class="container">
<div class="row text-center">
          <div id="b1d663a1aa594ca9b9b0daf502e9a9cb" class="chart-container" style="width:350px; height:250px;"></div>
          <div id="4ad7f94ac82a4c588c988232829f0616" class="chart-container" style="width:350px; height:250px;"></div>
          <div id="6b09216aecc6420595a728c7a078b4e1" class="chart-container" style="width:350px; height:250px;"></div>
      </div>

    <div class="row text-center">
          <div class="col-lg-12 offset-lg-3 offset-xl-0">
    <br><br><br><br>
    <a href="Tables/个人视频修改次数.html"><button class="btn btn-outline-success my-2 my-sm-0">个人视频修改次数</button><!-- img border="0" src="/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/tmp/1.jpg" width="500" height="300" /> --></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Tables/教师个人修改率.html"><button class="btn btn-outline-success my-2 my-sm-0">教师个人修改率</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        var chart_b1d663a1aa594ca9b9b0daf502e9a9cb = echarts.init(
            document.getElementById('b1d663a1aa594ca9b9b0daf502e9a9cb'), 'white', {renderer: 'canvas'});
        var option_b1d663a1aa594ca9b9b0daf502e9a9cb = {
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
                    3
                ],
                [
                    "01:15",
                    0
                ],
                [
                    "02:30",
                    0
                ],
                [
                    "03:45",
                    0
                ],
                [
                    "05:00",
                    0
                ],
                [
                    "06:15",
                    0
                ],
                [
                    "07:30",
                    1
                ],
                [
                    "08:45",
                    3
                ],
                [
                    "10:00",
                    4
                ],
                [
                    "11:15",
                    0
                ],
                [
                    "12:30",
                    0
                ],
                [
                    "13:45",
                    0
                ],
                [
                    "15:00",
                    0
                ],
                [
                    "16:15",
                    1
                ],
                [
                    "17:30",
                    0
                ],
                [
                    "18:45",
                    0
                ],
                [
                    "20:00",
                    2
                ],
                [
                    "21:15",
                    4
                ],
                [
                    "22:30",
                    3
                ],
                [
                    "23:45",
                    3
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
            "max": 10,
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
        chart_b1d663a1aa594ca9b9b0daf502e9a9cb.setOption(option_b1d663a1aa594ca9b9b0daf502e9a9cb);
    </script>
<script>
        var chart_4ad7f94ac82a4c588c988232829f0616 = echarts.init(
            document.getElementById('4ad7f94ac82a4c588c988232829f0616'), 'white', {renderer: 'canvas'});
        var option_4ad7f94ac82a4c588c988232829f0616 = {
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
                    24
                ],
                [
                    "Tue",
                    20
                ],
                [
                    "Wed",
                    23
                ],
                [
                    "Thu",
                    27
                ],
                [
                    "Fri",
                    20
                ],
                [
                    "Sat",
                    27
                ],
                [
                    "Sun",
                    26
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
            "max": 50,
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
        chart_4ad7f94ac82a4c588c988232829f0616.setOption(option_4ad7f94ac82a4c588c988232829f0616);
    </script>

    <script>
        var chart_6b09216aecc6420595a728c7a078b4e1 = echarts.init(
            document.getElementById('6b09216aecc6420595a728c7a078b4e1'), 'white', {renderer: 'canvas'});
        var option_6b09216aecc6420595a728c7a078b4e1 = {
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
                    25
                ],
                [
                    "2",
                    22
                ],
                [
                    "3",
                    29
                ],
                [
                    "4",
                    22
                ],
                [
                    "5",
                    29
                ],
                [
                    "6",
                    26
                ],
                [
                    "7",
                    22
                ],
                [
                    "8",
                    26
                ],
                [
                    "9",
                    27
                ],
                [
                    "10",
                    24
                ],
                [
                    "11",
                    21
                ],
                [
                    "12",
                    28
                ],
                [
                    "13",
                    28
                ],
                [
                    "14",
                    28
                ],
                [
                    "15",
                    24
                ],
                [
                    "16",
                    22
                ],
                [
                    "17",
                    20
                ],
                [
                    "18",
                    25
                ],
                [
                    "19",
                    23
                ],
                [
                    "20",
                    21
                ],
                [
                    "21",
                    23
                ],
                [
                    "22",
                    21
                ],
                [
                    "23",
                    24
                ],
                [
                    "24",
                    25
                ],
                [
                    "25",
                    22
                ],
                [
                    "26",
                    23
                ],
                [
                    "27",
                    22
                ],
                [
                    "28",
                    28
                ],
                [
                    "29",
                    20
                ],
                [
                    "30",
                    23
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
            "max": 50,
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
        chart_6b09216aecc6420595a728c7a078b4e1.setOption(option_6b09216aecc6420595a728c7a078b4e1);
    </script>
    
  </body>
  
  
  
</html>
