<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户 详情</title>
    <%@ include file="include/head.jsp" %>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li><a href="userList">用户列表</a></li>
        <li class="active"><a href="#">详情</a></li>
    </ul>
    <br/>
    <form class="form-horizontal" role="form" action="#" method="post">
        <input type="hidden" class="form-control" id="id" name="id" value="${vo.id}"/>
        <div class="form-group">
            <label class="col-sm-3 control-label">用户名：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.username}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">姓名：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.realName}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">性别：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.userSex}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">手机：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.userPhone}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">备注：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                <textarea rows="3" class="form-control" id="userText" name="userText" disabled="disabled">${vo.userText}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">类型：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.userType}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label"></label>
            <div class="col-sm-5" style="padding-top: 7px;">
                <input type="button" class="btn btn-pill btn-line btn-info btn-sm" value="返回" onclick="javascript:history.back(-1);">
            </div>
        </div>
    </form>
</div>
</body>
</html>
