<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>学生成绩管理系统</title>
    <link rel="stylesheet" href="js/myCss.css">
    <script src="js/jquery.min.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1 style="text-shadow: 1px 2px #FFFFFF;color: #000000"><%--<img src="img/icon.jpg" class="radius-circle rotate-hover" height="50" alt=""/>--%>学生成绩管理系统</h1>
    </div>
    <div class="head-l" style="float: right;margin-right: 100px;"><a class="button button-little bg-red" href="authLogout"><span class="icon-power-off"></span>退出</a></div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <h2><span class="icon-user"></span>个人中心</h2>
    <ul>
        <li><a href="reset_password.jsp" target="right"><span class="icon-caret-right"></span>密码修改</a></li>
    </ul>

    <h2><span class="icon-user"></span>系统管理</h2>
    <ul>
        <li><a href="userList" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
        <li><a href="scoreList" target="right"><span class="icon-caret-right"></span>成绩管理</a></li>

        <li><a href="noticeList" target="right"><span class="icon-caret-right"></span>公告管理</a></li>
    </ul>
</div>
<script type="text/javascript">
    $(function () {
        $(".leftnav h2").click(function () {
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function () {
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>
<ul class="bread">
    <li><a href="userList" target="right" class="icon-home">首页</a></li>
    <li><a id="a_leader_txt">用户管理</a></li>
</ul>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="userList" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>
