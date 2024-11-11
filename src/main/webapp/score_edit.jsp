<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>成绩 编辑</title>
    <%@ include file="include/head.jsp" %>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li><a href="scoreList">成绩 列表</a></li>
        <li class="active"><a href="#">编辑</a></li>
    </ul>
    <br/>
    <form class="form-horizontal" role="form" action="scoreEdit" method="post" onsubmit="return check()">
        <input type="hidden" class="form-control" id="id" name="id" value="${vo.id}"/>
        
            <div class="form-group">
                <label class="col-sm-3 control-label">姓名：</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="scoreName" name="scoreName" value="${vo.scoreName}">
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">性别：</label>
            <div class="col-sm-5">
                       <input name="scoreSex" type="radio" value="男" ${vo.scoreSex=='男'?'checked':''}/>&nbsp;&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
                       <input name="scoreSex" type="radio" value="女" ${vo.scoreSex=='女'?'checked':''}/>&nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">班级：</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="scoreClass" name="scoreClass" value="${vo.scoreClass}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">学科：</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="scoreSubject" name="scoreSubject" value="${vo.scoreSubject}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">教师：</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="scoreTeacher" name="scoreTeacher" value="${vo.scoreTeacher}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">分数：</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="scoreScore" name="scoreScore" value="${vo.scoreScore}">
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">备注：</label>
            <div class="col-sm-5">
                <textarea rows="3" class="form-control" id="scoreText" name="scoreText" placeholder="请输入内容......">${vo.scoreText}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label"></label>
            <div class="col-sm-5">
                <input type="submit" class="btn btn-pill btn-line btn-default btn-sm" value="保存">
                <input type="button" class="btn btn-pill btn-line btn-info btn-sm" value="返回" onclick="javascript:history.back(-1);">
            </div>
        </div>
    </form>
</div>
</body>
<script type="text/javascript">
    //提交之前进行检查，如果return false，则不允许提交
    function check() {
        //根据ID获取值
        if (document.getElementById("scoreName").value.trim().length == 0) {
            alert("姓名不能为空!");
            return false;
        }
        if (document.getElementById("scoreClass").value.trim().length == 0) {
            alert("班级不能为空!");
            return false;
        }
        if (document.getElementById("scoreSubject").value.trim().length == 0) {
            alert("学科不能为空!");
            return false;
        }
        if (document.getElementById("scoreTeacher").value.trim().length == 0) {
            alert("教师不能为空!");
            return false;
        }
        if (document.getElementById("scoreScore").value.trim().length == 0) {
            alert("分数不能为空!");
            return false;
        }
        return true;
    }
</script>
</html>
