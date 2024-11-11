<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="js/myCss.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/myJs.js"></script>
    <script type="text/javascript">
        let alert_msg = '${alert_msg}';
        if (alert_msg != null && alert_msg.trim() != '') {
            window.alert(alert_msg);
        }
    </script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">
            </div>
            <form action="authRegister" method="post" onsubmit="return check()">
                <input type="hidden" name="forwardPage" id="forwardPage" value="menu.jsp"/>
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top" style="font-size: 35px;font-weight: 700;color:#000000;text-shadow: 2px 3px #FFFFFF;">学生成绩管理系统</div>
                    <a href="login.jsp" style="font-size: 24px;color: black;text-decoration: none;padding-left: 140px;">登录</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a style="font-size: 24px;color:#269abc ;text-decoration: none;">注册</a>
                    <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="username" id="username" placeholder="登录账号"/>
                                <span class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="password" id="password" placeholder="登录密码"/>
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="password2" id="password2" placeholder="确认密码"/>
                                <span class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                    </div>
                    <div style="padding:30px;">
                        <input type="submit" class="button button-block bg-main text-big input-big" value="注册">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    //提交之前进行检查，如果return false，则不允许提交
    function check() {
        //根据ID获取值
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var password2 = document.getElementById("password2").value;
        if (username == "") {
            alert("用户名不能为空！");
            return false;
        }
        if (password == "") {
            alert("密码不能为空！");
            return false;
        }
        if (password2 != password) {
            alert("密码输入不一致！");
            return false;
        }
        return true;
    }
</script>
</html>
