<%--
  Created by IntelliJ IDEA.
  User: wenmingbin
  Date: 2019/12/5
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>主页</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="../../css/theme.css">
    <link rel="stylesheet" href="../../css/font-awesome.css">

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>


    <script src="javascripts/html5.js"></script>
    <![endif]-->


</head>


<body>


<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav pull-right">

                <li id="fat-menu" class="dropdown">
                    <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-user"></i> Jack Smith
                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="#">Settings</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                    </ul>
                </li>

            </ul>
            <a class="brand" href="index.html"><span class="first">Online</span> <span class="second">Shop</span></a>
        </div>
    </div>
</div>


<div class="container-fluid">

    <div class="row-fluid">
        <div class="span3">
            <div class="sidebar-nav">
                <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>图书</div>
                <ul id="dashboard-menu" class="nav nav-list collapse in">
                    <li class="active"><a href="index.jsp">主页</a></li>
                    <li ><a href="BooksListServlet">所有图书</a></li>
                    <li ><a href="add-books.jsp">添加图书</a></li>
                    <li ><a href="update-books.jsp">修改图书</a></li>

                </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>管理员<span class="label label-info">&nbsp;&nbsp;+&nbsp;&nbsp;</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                    <li ><a href="SysuserListSerclet">管理员列表</a></li>
                    <li ><a href="#">管理员公告</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i class="icon-exclamation-sign"></i>扩展页面</div>
                <ul id="settings-menu" class="nav nav-list collapse in">
                    <li ><a href="#">扩展页面</a></li>
                    <li ><a href="#">扩展页面</a></li>
                    <li ><a href="#">扩展页面</a></li>
                    <li ><a href="#">扩展页面</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>扩展工具</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                    <li ><a href="#">扩展工具</a></li>
                    <li ><a href="#">扩展工具</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--   <script type="text/javascript" src="lib/jqplot/jquery.jqplot.min.js"></script> -->
<!-- <script type="text/javascript" charset="utf-8" src="javascripts/graphDemo.js"></script> -->

<div class="stats">
    <p class="stat"><span class="number">53</span>tickets</p>
    <p class="stat"><span class="number">27</span>tasks</p>
    <p class="stat"><span class="number">15</span>waiting</p>
</div>
<h1 class="page-title"></h1>


<div class="row-fluid">
    <h1>欢迎进入在线书城后台管理系统 V1.0版</h1>


</div>
<footer>
    <hr>
    <p class="pull-right">Collect from <a href="http://www.mycodes.net/" title="网页模板" target="_blank">网页模板</a> </p>

    <p>&copy; 2012 <a href="#">Portnine</a></p>
</footer>
</body>
</html>
