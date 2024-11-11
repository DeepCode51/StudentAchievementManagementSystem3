<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>主页</title>
    <%@ include file="include/head.jsp" %>
    <script type="text/javascript">
        let alert_msg = '${alert_msg}';
        if (alert_msg != null && alert_msg.trim() != '') {
            window.alert(alert_msg);
        }
    </script>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#">修改密码</a></li>
    </ul>
    <br/>
    <form class="form-horizontal" role="form" action="authResetPassword" method="post"
          onsubmit="return check()">
        <div class="form-group">
            <label class="col-sm-3 control-label">用户名</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="username" readonly="readonly" name="username"
                       value="${loginUser.username}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">旧密码</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="oldPassword" name="oldPassword" placeholder="请输入旧密码">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">新密码</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="请输入新密码">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">确认密码</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="newPassword2" name="newPassword2" placeholder="请确认新密码">
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
        console.log("666666666666")
        console.log("666666666666")
        console.log("666666666666")
        //根据ID获取值
        var oldPassword = document.getElementById("oldPassword").value;
        if (oldPassword == "") {
            alert("原密码不能为空！");
            return false;
        }
        var newPassword = document.getElementById("newPassword").value;
        if (newPassword == "") {
            alert("新密码不能为空！");
            return false;
        }
        var newPassword2 = document.getElementById("newPassword2").value;
        if (newPassword2 != newPassword) {
            alert("密码输入不一致！");
            return false;
        }
        return true;
    }
</script>
</html>
