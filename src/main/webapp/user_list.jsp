<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户 管理</title>
    <%@ include file="include/head.jsp" %>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="active"><a href="userList">用户 列表</a></li>
        <c:if test="${loginUser.userType == '管理员'}"><li><a href="user_add.jsp">添加</a></li></c:if>
    </ul>
    <br/>
    <form class="form-inline" id="searchForm" action="userList" method="post">
        <div class="form-group">
            <input type="text" class="form-control" name="keyword" id="keyword" placeholder="姓名">
            <input type="hidden" id="searchColumn" name="searchColumn" value="real_name"/>
        </div>
        <button class="btn btn-pill btn-line btn-warning btn-sm"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>查询
        </button>
    </form>
    <br/>
    <table class="table table-hover table-bordered">
        <thead>
        <tr>
            <th>用户名</th>
            <th>姓名</th>
            <th>性别</th>
            <th>手机</th>
            <th>类型</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="vo">
            <tr>
                <td>${vo.username}</td>
                <td><a href="userGet?id=${vo.id}">${vo.realName}</a></td>
                <td>${vo.userSex}</td>
                <td>${vo.userPhone}</td>
                <td>${vo.userType}</td>
                <td>
                    <button onclick="window.location.href='userEditPre?id=${vo.id}'"
                            class="btn btn-pill btn-line btn-warning btn-xs"
                            <c:if test="${loginUser.userType != '管理员' && vo.id != loginUser.id}">disabled="disabled" title="没有权限！！！"</c:if>
                             >
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                        编辑
                    </button>
                    <button onclick="if(window.confirm('将要删除：${vo.realName}？'))window.location.href='userDelete?id=${vo.id}'"
                            class="btn btn-pill btn-line btn-primary btn-xs"
                            <c:if test="${loginUser.userType != '管理员'}">disabled="disabled" title="没有权限！！！"</c:if> >
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                        删除
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div style="float: right;padding-right: 10px;color: #515151;"><jsp:include page="split.jsp"/></div>
</div>
</body>
</html>
