<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>公告 添加</title>
    <%@ include file="include/head.jsp" %>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li><a href="noticeList?">公告 列表</a></li>
        <li class="active"><a href="#">添加</a></li>
    </ul>
    <br/>
    <form class="form-horizontal" role="form" action="noticeAdd" method="post" onsubmit="return check()">
        <div class="form-group">
            <label class="col-sm-3 control-label">标题：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="noticeName" name="noticeName">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">内容：</label>
            <div class="col-sm-5">
                <textarea rows="3" class="form-control" id="noticeText" name="noticeText" placeholder="请输入内容......"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">类型：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="noticeType" name="noticeType">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">创建时间：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="createDate" name="createDate">
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
        if (document.getElementById("noticeName").value.trim().length == 0) {
            alert("标题不能为空!");
            return false;
        }
        if (document.getElementById("noticeType").value.trim().length == 0) {
            alert("类型不能为空!");
            return false;
        }
        if (document.getElementById("createDate").value.trim().length == 0) {
            alert("创建时间不能为空!");
            return false;
        }
        return true;
    }
</script>
</html>
