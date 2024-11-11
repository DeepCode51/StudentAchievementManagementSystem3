<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>用户 添加</title>
    <%@ include file="include/head.jsp" %>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li><a href="userList?">用户 列表</a></li>
        <li class="active"><a href="#">添加</a></li>
    </ul>
    <br/>
    <form class="form-horizontal" role="form" action="userAdd" method="post" onsubmit="return check()">
        <div class="form-group">
            <label class="col-sm-3 control-label">用户名：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="username" name="username">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">密码：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="password" name="password">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">姓名：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="realName" name="realName">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">性别：</label>
            <div class="col-sm-5">
                <input name="userSex" type="radio" value="男" checked="checked"/>&nbsp;&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="userSex" type="radio" value="女"/>&nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">手机：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="userPhone" name="userPhone">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">备注：</label>
            <div class="col-sm-5">
                <textarea rows="3" class="form-control" id="userText" name="userText" placeholder="请输入内容......"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">类型：</label>
            <div class="col-sm-5">
                <input name="userType" type="radio" value="管理员" checked="checked"/>&nbsp;&nbsp;&nbsp;管理员&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="userType" type="radio" value="普通用户"/>&nbsp;&nbsp;&nbsp;普通用户&nbsp;&nbsp;&nbsp;&nbsp;
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
        if (document.getElementById("username").value.trim().length == 0) {
            alert("用户名不能为空!");
            return false;
        }
        if (document.getElementById("password").value.trim().length == 0) {
            alert("密码不能为空!");
            return false;
        }
        if (document.getElementById("realName").value.trim().length == 0) {
            alert("姓名不能为空!");
            return false;
        }
        if (document.getElementById("userPhone").value.trim().length == 0) {
            alert("手机不能为空!");
            return false;
        }
        return true;
    }
</script>
</html>
