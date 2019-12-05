<%--
  Created by IntelliJ IDEA.
  User: wenmingbin
  Date: 2019/12/3
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>首页</title>
    <link rel="stylesheet" href="../css/index.css" />
    <link rel="stylesheet" href="../css/index-middle.css" />
</head>
<body>
<nav class="navbar navbar-default nav-bar-width nav-bar-height">
    <div class="navbar-header"></div>
    <div class="access-statistics"></div>
    <ul id="menu">
        <li ><a href="www.baidu.com">首页</a></li>
        <li ><a href="www.baidu.com">文章</a></li>
        <li ><a href="www.baidu.com">代码库</a></li>
        <li ><a href="www.baidu.com">留言</a></li>
        <li ><a href="www.baidu.com">分享</a></li>
        <li ><a href="www.baidu.com">联系站长</a></li>
    </ul>
    <div class="navbar-header"></div>
    <div>
        <a href="${pageContext.request.contextPath}/UserLoginServlet" class="login-button">
            <span>登录/注册</span>
        </a>
    </div>
</nav>
<div class="block">
    <div class="imgae_div">
        <div><img src="../img/casel-1.jpg" alt=""></div>
        <div><img src="../img/casel-2.jpg" alt=""></div>
        <div><img src="../img/casel-3.jpg" alt=""></div>
        <div><img src="../img/casel-4.jpg" alt=""></div>
        <div><img src="../img/casel-5.jpg" alt=""></div>
        <div><img src="../img/casel-6.jpg" alt=""></div>
    </div>
    <div class="btn">
        <span><</span>
        <span>></span>
    </div>
    <div class="point">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<script src="../js/index.js"></script>
</body>
</html>
