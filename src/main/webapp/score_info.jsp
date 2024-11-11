<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>成绩 详情</title>
    <%@ include file="include/head.jsp" %>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li><a href="scoreList">用户列表</a></li>
        <li class="active"><a href="#">详情</a></li>
    </ul>
    <br/>
    <form class="form-horizontal" role="form" action="#" method="post">
        <input type="hidden" class="form-control" id="id" name="id" value="${vo.id}"/>
        <div class="form-group">
            <label class="col-sm-3 control-label">姓名：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.scoreName}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">性别：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.scoreSex}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">班级：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.scoreClass}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">学科：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.scoreSubject}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">教师：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.scoreTeacher}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">分数：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                ${vo.scoreScore}
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">备注：</label>
            <div class="col-sm-5" style="padding-top: 7px;">
                <textarea rows="3" class="form-control" id="scoreText" name="scoreText" disabled="disabled">${vo.scoreText}</textarea>
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
